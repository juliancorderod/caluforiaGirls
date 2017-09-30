//Copyright 2017 Looking Glass Factory Inc.
//All rights reserved.
//Unauthorized copying or distribution of this file, and the source code contained herein, is strictly prohibited.

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;

using UnityEngine;
using UnityEngine.Profiling;
using UnityEngine.Rendering;

namespace HoloPlaySDK
{
    [ExecuteInEditMode]
    [RequireComponent(typeof (Camera))]
    public class HoloPlay : MonoBehaviour
    {
        /// <summary>
        /// Release version of the SDK. 
        /// Stored as a float to allow comparisons (i.e. is this version > 0.1f ?)
        /// </summary>
        public static readonly float version = 0.362f;

        /// <summary>
        /// The HoloPlay holds a HoloPlayConfig from which it reads 
        /// all the values required for lenticular-izing the resulting image.
        /// </summary>
        private static HoloPlayConfig config;
        public static HoloPlayConfig Config
        {
            get
            {
                if (config == null)
                {
                    InitializeConfig();
                }
                return config;
            }
            set { config = value; }
        }
        private readonly static string configFileName = "holoPlayConfig.json";
        private readonly static string configCompanyName = "Looking Glass Factory";
        private readonly static string configDirName = "holoPlaySDK_calibration";
        public static string configDrivePath = "";

        /// <summary>
        /// The size of the HoloPlay Capture. 
        /// Use this, rather than the transform's scale, to resize the HoloPlay Capture.
        /// </summary>
        [Range(0.001f, 200)]
        public float size = 10;
        /// <summary>
        /// The field of view of the HoloPlay.
        /// Only available in Perspective mode.
        /// </summary>
        [Range(1, 75)]
        public float fov = 10;
        /// <summary>
        /// The near clipping plane.
        /// Larger value = more distance *in front* of the focal plane is rendered.
        /// Use caution when using a high number for this,
        /// as objects too far in front or behind the focal plane will appear blurry and double-image.
        /// </summary>
        [Range(0f, 2f)]
        public float nearClip = 1f;
        /// <summary>
        /// The far clipping plane.
        /// Larger value = more distance *behind* the focal plane is rendered.
        /// Use caution when using a high number for this,
        /// as objects too far in front or behind the focal plane will appear blurry and double-image.
        /// </summary>
        [Range(0.01f, 3f)]
        public float farClip = 1.5f;
        /// <summary>
        /// Render in editor.
        /// When true, the lenticularization will happen even in edit-mode.
        /// For use in conjunction with the HoloPlayGameWindowMover.
        /// </summary>
        [SerializeField]
        public bool renderInEditor = true;

        #if UNITY_EDITOR
        /// <summary>
        /// Gizmo Color.
        /// For use in editor only, sets the color of the gizmo in scene view.
        /// </summary>
        Color gizmoColor = Color.HSVToRGB(0.35f, 1, 1);
        Color gizmoColor0 = Color.HSVToRGB(0.5f, 1, 1);
        public bool gizmoShowAll;
        Vector2[] gizmoLogo = new []
        {
            new Vector2(0, 1), new Vector2(2, 2), new Vector2(4, 1), new Vector2(2, 0),
            new Vector2(0, 2), new Vector2(2, 3), new Vector2(4, 2), new Vector2(2, 1),
        };
        #endif

        /// <summary>
        /// Hidden away in debug mode, but this lets you turn off the HoloPlay
        /// even in play mode
        /// </summary>
        public bool fullyDisabled;

        //public fields that the HoloPlay must reference, 
        private RenderTexture rtMain;
        private RenderTexture rtFinal;
        private Material matFinal;
        private Camera cam;
        /// <summary>
        /// The Camera doing the rendering of the views.
        /// This camera moves around the focal pane, taking x number of renders 
        /// (where x is the number of views)
        /// </summary>
        /// <returns></returns>
        public Camera Cam
        {
            get { return cam; }
            private set { cam = value; }
        }
        private Camera camFinal;
        private int rtFinalSize = 2048;
        private int tilesX = 4;
        private int tilesY = 8;

        /// <summary>
        /// On View Render callback.
        /// This event fires once every time a view is rendered, just before the render happens.
        /// It passes an int which is the 0th indexed view being rendered (so from 0 to numViews-1).
        /// It fires one last time after the last render, passing the int numViews.
        /// </summary>
        public static Action<int> onViewRender;

        //the test textures
        [SerializeField]
        private Texture2D colorTestTex;
        [SerializeField]
        private Texture2D numTestTex;

        //to preface warnings and logs
        public static readonly string warningText = "[HoloPlay] ";

        //todo: perhaps remove
        public static Action onLoadConfig;

        static string currentlyLoadedConfigPath;

        public bool isReady;

        public bool configPrintout;
        float configPrintoutTimer;

        private static HoloPlay main;
        /// <summary>
        /// Static ref to the currently active HoloPlay.
        /// There may only be one active at a time, so this will always return the active one.
        /// </summary>
        public static HoloPlay Main
        {
            get
            {
                if (main != null) return main;
                main = FindObjectOfType<HoloPlay>();
                return main;
            }
            private set { main = value; }
        }

        void OnEnable()
        {
            //setup the static ref
            Main = this;

            //setup the main camera: this is the child that pivots around the focal pane
            Transform holoPlayCamChild = transform.Find("HoloPlay Camera");
            if (holoPlayCamChild == null)
            {
                holoPlayCamChild = new GameObject("HoloPlay Camera", typeof (Camera)).transform;
                holoPlayCamChild.parent = transform;
                var lc = holoPlayCamChild.GetComponent<Camera>();
                lc.clearFlags = CameraClearFlags.Color;
                lc.backgroundColor = Color.black;
            }
            Cam = holoPlayCamChild.GetComponent<Camera>();
            Cam.transform.hideFlags = HideFlags.NotEditable;

            //setup final camera. this is the camera which does the final render
            camFinal = GetComponent<Camera>();
            if (camFinal == null) gameObject.AddComponent<Camera>();
            camFinal.useOcclusionCulling = false;
            // camFinal.allowHDR = false;
            // camFinal.allowMSAA = false;
            camFinal.cullingMask = 0;
            camFinal.clearFlags = CameraClearFlags.Nothing;
            camFinal.backgroundColor = Color.black;
            camFinal.orthographic = true;
            camFinal.orthographicSize = 0.001f;
            camFinal.nearClipPlane = 0;
            camFinal.farClipPlane = 0.001f;
            camFinal.hideFlags = HideFlags.HideInInspector;

            //setup material to post-process the final cam
            matFinal = new Material(Shader.Find("Hidden/HoloPlay/HoloPlay Final"));
            matFinal.mainTexture = rtFinal;

            //setup textures used in the tests
            if (colorTestTex == null)
                colorTestTex = (Texture2D) Resources.Load("HoloPlay_colorTestTex__");
            if (numTestTex == null)
                numTestTex = (Texture2D) Resources.Load("HoloPlay_numTestTex__");

            //enforce the one-active-at-a-time rule
            var otherHoloPlay = FindObjectsOfType<HoloPlay>();
            if (otherHoloPlay.Length > 0)
            {
                bool displayMsg = false;
                for (int i = 0; i < otherHoloPlay.Length; i++)
                {
                    if (otherHoloPlay[i].gameObject != gameObject)
                    {
                        otherHoloPlay[i].gameObject.SetActive(false);
                        displayMsg = true;
                    }
                }
                if (displayMsg)
                    Debug.LogWarning(warningText +
                        "Can only have one active HoloPlay at a time! disabling all others.");
            }

            //if the config isn't loaded yet, load it
            if (Config == null)
                InitializeConfig();
            else
                ForceCalibrationRefresh();
        }

        void Start()
        {
            //let whatever know its ready now
            isReady = true;
        }

        void OnDisable()
        {
            //destroy the rendertextues and materials we created
            if (!Application.isPlaying)
            {
                rtMain.Release();
                DestroyImmediate(rtMain);
            }
            rtFinal.Release();
            DestroyImmediate(rtFinal);
            DestroyImmediate(matFinal);
        }

        void Update()
        {
            if ((Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift)) &&
                Input.GetKeyDown(KeyCode.F10))
            {
                configPrintout = !configPrintout;
            }
        }

        //the meat of the rendering is in here
        void LateUpdate()
        {
            float adjustedSize = GetAdjustedSize();
            //restore cameras to original state
            Cam.enabled = false;
            Cam.aspect = Config.screenW / Config.screenH;
            Cam.transform.position = transform.position + transform.forward * -adjustedSize;
            Cam.transform.localRotation = Quaternion.identity;
            Cam.nearClipPlane = Mathf.Max(adjustedSize - nearClip * size, 0.1f * size);
            Cam.farClipPlane = adjustedSize + farClip * size;
            Cam.fieldOfView = fov;
            Cam.orthographicSize = size * 0.5f;

            camFinal.enabled = true;
            camFinal.orthographicSize = 0.001f;

            //set the render texture based on if there's a test or not 
            switch ((int) Config.test)
            {
                case 0:
                    matFinal.mainTexture = rtFinal;
                    break;
                case 1:
                    matFinal.mainTexture = colorTestTex;
                    break;
                case 2:
                    matFinal.mainTexture = numTestTex;
                    break;
            }

            //****************************
            //if not rendering views
            //****************************
            if (fullyDisabled || (!renderInEditor && !Application.isPlaying))
            {
                Cam.targetTexture = null;
                camFinal.enabled = false;
                Cam.enabled = true;
                HandleOffset(0, Config.verticalAngle);
                return;
            }

            //****************************
            //rendering views
            //****************************

            //handle loop
            for (int i = 0; i < Config.numViews; i++)
            {
                //reset render texture
                Cam.targetTexture = rtMain;

                //offset or rotation
                HandleOffset(GetAngleAtView(i), Config.verticalAngle);

                //broadcast the onViewRender action
                if (onViewRender != null && Application.isPlaying)
                    onViewRender(i);

                //actually render~!
                Cam.Render();

                //copy to fullsize rt
                int ri = (tilesX * tilesY) - i - 1;
                int x = (i % tilesX) * rtMain.width;
                int y = (ri / tilesX) * rtMain.height;
                Rect rtRect = new Rect(x, y, rtMain.width, rtMain.height);
                if (rtMain.IsCreated() && rtFinal.IsCreated())
                {
                    Graphics.SetRenderTarget(rtFinal);
                    GL.PushMatrix();
                    GL.LoadPixelMatrix(0, rtFinal.width, rtFinal.height, 0);
                    Graphics.DrawTexture(rtRect, rtMain);
                    GL.PopMatrix();
                }
            }

            //sending variables to the shader

            //pitch
            float screenInches = (float) Screen.width / Config.DPI;
            float newPitch = Config.pitch * screenInches;
            //account for tilt in measuring pitch horizontally
            newPitch *= Mathf.Cos(Mathf.Atan(1f / Config.slope));
            matFinal.SetFloat("pitch", newPitch);

            //tilt
            float newTilt = Config.screenH / (Config.screenW * Config.slope);
            matFinal.SetFloat("tilt", newTilt);

            //center
            matFinal.SetFloat("center", Config.center);

            //numViews
            //during color test, force views down to 2
            float newNumViews = (int) Config.test == 1 ? 4 : (int) Config.numViews;
            matFinal.SetFloat("numViews", newNumViews);

            //tiles
            matFinal.SetFloat("tilesX", tilesX);
            matFinal.SetFloat("tilesY", tilesY);

            //flip x
            matFinal.SetFloat("flipX", Config.flipImage);

            //broadcast the onViewRender action one last time, 
            //incase there is a need to change things before the final render
            if (onViewRender != null && Application.isPlaying)
                onViewRender((int) Config.numViews);
        }

        void OnRenderImage(RenderTexture src, RenderTexture dest)
        {
            if (renderInEditor || Application.isPlaying)
            {
                Graphics.Blit(matFinal.mainTexture, dest, matFinal);
            }
            else
            {
                Graphics.Blit(src, dest);
            }
        }

        void ForceCalibrationRefresh()
        {
            tilesX = 4;
            tilesY = 8;
            rtFinalSize = 2048;
            if ((int) Config.numViews > 32)
            {
                tilesX = 8;
                tilesY = 16;
                rtFinalSize = 4096;
            }

            //setup render texture
            rtMain = new RenderTexture(rtFinalSize / tilesX, rtFinalSize / tilesY, 24)
            {
                wrapMode = TextureWrapMode.Clamp,
                autoGenerateMips = false,
                useMipMap = false
            };
            rtMain.Create();
            rtFinal = new RenderTexture(rtFinalSize, rtFinalSize, 0)
            {
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp,
                autoGenerateMips = false,
                useMipMap = false
            };
            rtFinal.Create();

            //if the config is already set, return out
            if (Screen.width == Config.screenW && Screen.height == Config.screenH)
                return;

            if (Application.isEditor)
            {
                // Debug.LogWarning(holoPlayWarning + "Set game window to 2048x1536 for proper aspect in editor");
                //todo: make the game window mover set the the resolution properly so we don't get this error
            }
            else
            {
                Screen.SetResolution((int) Config.screenW, (int) Config.screenH, true);
            }

            #if UNITY_EDITOR
            if (UnityEditor.PlayerSettings.defaultScreenWidth != (int) Config.screenW ||
                UnityEditor.PlayerSettings.defaultScreenHeight != (int) Config.screenH)
            {
                UnityEditor.PlayerSettings.defaultScreenWidth = (int) Config.screenW;
                UnityEditor.PlayerSettings.defaultScreenHeight = (int) Config.screenH;
            }
            #endif
        }

        float GetAngleAtView(float viewNum)
        {
            return -Config.viewCone * 0.5f + (float) viewNum / (Config.numViews - 1) * Config.viewCone;
        }

        void HandleOffset(float horizontalOffset, float verticalOffset)
        {
            float adjustedSize = GetAdjustedSize();

            //start from scratch
            Cam.ResetProjectionMatrix();
            Cam.transform.localRotation = Quaternion.identity;

            //orthographic or regular perspective
            if (Cam.orthographic)
            {
                Cam.transform.position = transform.position + transform.forward * -adjustedSize;
                Cam.transform.RotateAround(transform.position, transform.up, -horizontalOffset);
                return;
            }

            //perspective correction
            //imagine triangle from pivot center, to camera, to camera's ideal new position. 
            //offAngle is angle at the pivot center. solve for offsetX
            //tan(offAngle) = offX / camDist
            //offX = camDist * tan(offAngle)
            float offsetX = adjustedSize * Mathf.Tan(horizontalOffset * Mathf.Deg2Rad);
            float offsetY = adjustedSize * Mathf.Tan(verticalOffset * Mathf.Deg2Rad);
            Vector3 camPos = transform.position;
            camPos += transform.right * offsetX;
            camPos += transform.up * offsetY;
            camPos += transform.forward * -adjustedSize;
            Cam.transform.position = camPos;

            //create var for new cam projection matrix
            Matrix4x4 matrix = Cam.projectionMatrix;

            //to measure pane width, get the pivot corners and measure the length
            Vector3[] pivotCorners = GetFrustumCorners(Cam, adjustedSize);
            for (int i = 0; i < pivotCorners.Length; i++)
            {
                pivotCorners[i] = transform.InverseTransformDirection(pivotCorners[i]);
            }
            float paneWidth = pivotCorners[3].x - pivotCorners[0].x;
            float paneHeight = pivotCorners[1].y - pivotCorners[0].y;

            //offset in unity space is in terms of 1/2 pane width, 
            //i.e. offset of 1 moves the camera 1/2 pane width to the right, so account for that
            matrix[0, 2] = -2 * Mathf.Sign(transform.lossyScale.x) * offsetX / paneWidth;
            matrix[1, 2] = -2 * Mathf.Sign(transform.lossyScale.y) * offsetY / paneHeight;

            //tada
            Cam.projectionMatrix = matrix;
        }

        public static void SaveConfigToFile()
        {
            string drivePath = GetConfigDriveFullFilePath();
            string persistentPath = GetConfigPersistentPath();

            //never save test mode as being on.
            float testMode = Config.test;
            Config.test.Value = 0;
            string json = JsonUtility.ToJson(Config, true);
            Config.test.Value = testMode;

            if (drivePath != "")
                File.WriteAllText(drivePath, json);
            File.WriteAllText(persistentPath, json);
            Debug.Log(warningText + "Config saved!");

            #if UNITY_EDITOR
            if (UnityEditor.PlayerSettings.defaultScreenWidth != (int) Config.screenW ||
                UnityEditor.PlayerSettings.defaultScreenHeight != (int) Config.screenH)
            {
                UnityEditor.PlayerSettings.defaultScreenWidth = (int) Config.screenW;
                UnityEditor.PlayerSettings.defaultScreenHeight = (int) Config.screenH;
            }
            #endif
        }

        /// <summary>
        /// Draws a 6 sided gizmo shape, given the 8 corners (clockwise front to clockwise back)
        /// </summary>
        /// <param name="v"></param>
        void DrawVolume(List<Vector3> v)
        {
            if (v.Count != 8) return;

            //draw near square
            Gizmos.DrawLine(v[0], v[1]);
            Gizmos.DrawLine(v[1], v[2]);
            Gizmos.DrawLine(v[2], v[3]);
            Gizmos.DrawLine(v[3], v[0]);

            //draw far square
            Gizmos.DrawLine(v[0 + 4], v[1 + 4]);
            Gizmos.DrawLine(v[1 + 4], v[2 + 4]);
            Gizmos.DrawLine(v[2 + 4], v[3 + 4]);
            Gizmos.DrawLine(v[3 + 4], v[0 + 4]);

            //connect them
            Gizmos.DrawLine(v[0], v[0 + 4]);
            Gizmos.DrawLine(v[1], v[1 + 4]);
            Gizmos.DrawLine(v[2], v[2 + 4]);
            Gizmos.DrawLine(v[3], v[3 + 4]);
        }

        #if UNITY_EDITOR
        void OnDrawGizmos()
        {
            Gizmos.color = gizmoColor;
            HandleOffset(0, Config.verticalAngle);
            //get corners
            List<Vector3> fc = new List<Vector3>();
            fc.AddRange(GetFrustumCorners(cam, cam.nearClipPlane));
            fc.AddRange(GetFrustumCorners(cam, cam.farClipPlane));

            DrawVolume(fc);

            //focal point
            Gizmos.color = gizmoColor0;
            var foc = GetFrustumCorners(Cam, GetAdjustedSize());
            for (int i = 0; i < foc.Length; i++)
            {
                var i0 = i != 0 ? i - 1 : foc.Length - 1;
                var i1 = i != foc.Length - 1 ? i + 1 : 0;

                var f = foc[i];
                var f0 = Vector3.Lerp(foc[i], foc[i0], 0.1f);
                var f1 = Vector3.Lerp(foc[i], foc[i1], 0.1f);

                Gizmos.DrawLine(f, f0);
                Gizmos.DrawLine(f, f1);
            }

            //arrow
            var forward = transform.forward * size;
            var aRelPos = -forward * nearClip;
            var aPos = aRelPos + transform.position - forward * 0.1f;
            var editorCamPos = UnityEditor.SceneView.lastActiveSceneView.camera.transform.position;
            var cross = Vector3.Cross(editorCamPos - transform.position, aRelPos - forward * 0.06f);
            cross = cross.normalized * size * 0.06f;

            Gizmos.DrawLine(aPos, aPos - forward * 0.24f);
            Gizmos.DrawLine(aPos, aPos - forward * 0.06f + cross);
            Gizmos.DrawLine(aPos, aPos - forward * 0.06f - cross);

            //logo
            Gizmos.color = new Color(0.8f, 0.2f, 1, 0.8f);
            var gl = new List<Vector3>();
            var s = Vector3.Distance(fc[0], fc[1]);

            foreach(var g in gizmoLogo)
            {
                gl.Add(transform.rotation * ((g + new Vector2(1, 1)) * s * 0.02f) + fc[0]);
            }
            foreach(var g in gizmoLogo)
            {
                gl.Add(transform.rotation * ((g + new Vector2(1, 2)) * s * 0.02f) + fc[0]);
            }
            for (int i = 0; i < 4; i++)
            {
                var i0 = i != 3 ? i + 1 : 0;
                Gizmos.DrawLine(gl[i], gl[i0]);
                Gizmos.DrawLine(gl[i + 4], gl[i0 + 4]);
            }

            Gizmos.DrawLine(gl[0], gl[4]);
            Gizmos.DrawLine(gl[2], gl[6]);

            //range
            //this one will definitely be removed but for now in Debug you can activate gizmoShowAll to see the range of the cameras
            //it seems to take a slight toll on the editor processing so i turn it off by default
            if (Cam.orthographic || !gizmoShowAll)
                return;

            Gizmos.color = new Color(0.8f, 1, 0, 0.4f);
            var rn = new List<Vector3>();
            var rf = new List<Vector3>();

            HandleOffset(GetAngleAtView(0), Config.verticalAngle);
            rn.AddRange(new []
            {
                cam.ViewportToWorldPoint(new Vector3(0, 0, cam.nearClipPlane)),
                    cam.ViewportToWorldPoint(new Vector3(0, 1, cam.nearClipPlane)),
            });
            rf.AddRange(new []
            {
                cam.ViewportToWorldPoint(new Vector3(1, 0, cam.farClipPlane)),
                    cam.ViewportToWorldPoint(new Vector3(1, 1, cam.farClipPlane)),
            });

            HandleOffset(GetAngleAtView(config.numViews - 1), config.verticalAngle);
            rn.AddRange(new []
            {
                cam.ViewportToWorldPoint(new Vector3(1, 0, cam.nearClipPlane)),
                    cam.ViewportToWorldPoint(new Vector3(1, 1, cam.nearClipPlane)),
            });
            rf.AddRange(new []
            {
                cam.ViewportToWorldPoint(new Vector3(0, 0, cam.farClipPlane)),
                    cam.ViewportToWorldPoint(new Vector3(0, 1, cam.farClipPlane)),
            });

            Gizmos.DrawLine(rn[0], Vector3.Lerp(rn[0], rn[1], 0.2f));
            Gizmos.DrawLine(rn[0], Vector3.Lerp(rn[0], foc[0], 0.2f));
            Gizmos.DrawLine(rn[0], Vector3.Lerp(rn[0], fc[0], 0.2f));

            Gizmos.DrawLine(rn[1], Vector3.Lerp(rn[1], rn[0], 0.2f));
            Gizmos.DrawLine(rn[1], Vector3.Lerp(rn[1], foc[1], 0.2f));
            Gizmos.DrawLine(rn[1], Vector3.Lerp(rn[1], fc[1], 0.2f));

            Gizmos.DrawLine(rn[2], Vector3.Lerp(rn[2], rn[3], 0.2f));
            Gizmos.DrawLine(rn[2], Vector3.Lerp(rn[2], foc[3], 0.2f));
            Gizmos.DrawLine(rn[2], Vector3.Lerp(rn[2], fc[3], 0.2f));

            Gizmos.DrawLine(rn[3], Vector3.Lerp(rn[3], rn[2], 0.2f));
            Gizmos.DrawLine(rn[3], Vector3.Lerp(rn[3], foc[2], 0.2f));
            Gizmos.DrawLine(rn[3], Vector3.Lerp(rn[3], fc[2], 0.2f));

            Gizmos.DrawLine(rf[0], Vector3.Lerp(rf[0], rf[1], 0.2f));
            Gizmos.DrawLine(rf[0], Vector3.Lerp(rf[0], foc[3], 0.2f));
            Gizmos.DrawLine(rf[0], Vector3.Lerp(rf[0], fc[3 + 4], 0.2f));

            Gizmos.DrawLine(rf[1], Vector3.Lerp(rf[1], rf[0], 0.2f));
            Gizmos.DrawLine(rf[1], Vector3.Lerp(rf[1], foc[2], 0.2f));
            Gizmos.DrawLine(rf[1], Vector3.Lerp(rf[1], fc[2 + 4], 0.2f));

            Gizmos.DrawLine(rf[2], Vector3.Lerp(rf[2], rf[3], 0.2f));
            Gizmos.DrawLine(rf[2], Vector3.Lerp(rf[2], foc[0], 0.2f));
            Gizmos.DrawLine(rf[2], Vector3.Lerp(rf[2], fc[0 + 4], 0.2f));

            Gizmos.DrawLine(rf[3], Vector3.Lerp(rf[3], rf[2], 0.2f));
            Gizmos.DrawLine(rf[3], Vector3.Lerp(rf[3], foc[1], 0.2f));
            Gizmos.DrawLine(rf[3], Vector3.Lerp(rf[3], fc[1 + 4], 0.2f));

            HandleOffset(0, config.verticalAngle);
        }
        #endif

        // public GUIStyle style;
        void OnGUI()
        {
            if (configPrintout)
                GUIConfigPrintout();
        }

        void GUIConfigPrintout()
        {
            var guiRect = new Rect(Screen.width * 0.3f, 0, Screen.width * 0.45f, Screen.height);
            var style = new GUIStyle();
            style.fontSize = 60;
            GUI.backgroundColor = Color.black;
            GUI.color = Color.white;
            style.normal.textColor = Color.white;
            style.alignment = TextAnchor.MiddleLeft;
            style.richText = true;
            style.normal.background = Texture2D.whiteTexture;
            style.padding = new RectOffset(120, 20, 0, 0);
            style.stretchWidth = true;
            style.stretchHeight = true;
            style.wordWrap = true;

            var printStr = "<color=green><size=120>HoloPlay SDK</size></color>";
            printStr += "\n<size=100>" + version + "</size>\n\n";

            var configFields = typeof (HoloPlayConfig).GetFields();
            for (int i = 0; i < configFields.Length; i++)
            {
                if (configFields[i].FieldType == typeof (HoloPlayConfig.ConfigValue))
                {
                    var configValue = (HoloPlayConfig.ConfigValue) configFields[i].GetValue(HoloPlay.Config);
                    printStr += configValue.name + ": " + configValue.Value.ToString("0.########") + "\n";
                }
            }

            printStr += "\n<size=40>config loaded from:\n" + currentlyLoadedConfigPath + "</size>";

            GUI.Box(guiRect, printStr, style);
        }

        ///returns the corners of the camera frustum as vector3s at dist
        public Vector3[] GetFrustumCorners(Camera cam, float dist, bool relative = false)
        {
            //make sure the dist is actually within the camera's clipping area
            dist = Mathf.Clamp(dist, cam.nearClipPlane, cam.farClipPlane);

            //get corners
            Vector3[] frustumCorners = new []
            {
                cam.ViewportToWorldPoint(new Vector3(0, 0, dist)),
                cam.ViewportToWorldPoint(new Vector3(0, 1, dist)),
                cam.ViewportToWorldPoint(new Vector3(1, 1, dist)),
                cam.ViewportToWorldPoint(new Vector3(1, 0, dist))
            };

            if (!relative)
                return frustumCorners;

            for (int i = 0; i < frustumCorners.Length; i++)
            {
                frustumCorners[i] = transform.InverseTransformPoint(frustumCorners[i]);
                frustumCorners[i] /= size;
            }
            return frustumCorners;
        }

        ///returns the cam size after adjustment for FOV. this is essentially the real cam distance from center.
        public float GetAdjustedSize()
        {
            return size * 0.5f / Mathf.Tan(fov * 0.5f * Mathf.Deg2Rad);
        }

        public static void InitializeConfig()
        {
            //check if there's a config in the data path
            string pdataConfigPath = GetConfigPersistentPath();
            bool pdataConfigExists = File.Exists(pdataConfigPath);

            //check if there's a config on the thumb drive
            //load the most recently updated one
            string driveConfigPath = SearchDrivesForConfigPath();
            if (driveConfigPath != "" && File.Exists(driveConfigPath))
            {
                string driveConfig = File.ReadAllText(driveConfigPath);
                //if the data config exists, compare the two
                if (pdataConfigExists)
                {
                    string pdataConfig = File.ReadAllText(pdataConfigPath);

                    //if the files are the same, exit
                    if (driveConfig == pdataConfig)
                    {
                        currentlyLoadedConfigPath = driveConfigPath;
                        LoadConfig(JsonUtility.FromJson<HoloPlayConfig>(driveConfig));
                        return;
                    }
                }

                //if the data config doesn't exist/isn't the same
                //write it with the values on the thumb drive
                File.WriteAllText(pdataConfigPath, driveConfig);
                currentlyLoadedConfigPath = driveConfigPath;
                LoadConfig(JsonUtility.FromJson<HoloPlayConfig>(driveConfig));
                return;
            }
            //if there's no config on the thumb drive
            //use the permanent config if it exists
            if (pdataConfigExists)
            {
                string pdataConfig = File.ReadAllText(pdataConfigPath);
                currentlyLoadedConfigPath = pdataConfigPath;
                LoadConfig(JsonUtility.FromJson<HoloPlayConfig>(pdataConfig));
                return;
            }

            //if nothing at all found, make a new one
            currentlyLoadedConfigPath = "not saved yet";
            LoadConfig(new HoloPlayConfig());
            return;
        }

        static void LoadConfig(HoloPlayConfig configIn)
        {
            Config = configIn;
            //make sure test value is always 0 unless specified by calibrator
            Config.test.Value = 0;
            if (onLoadConfig != null) onLoadConfig();
            HoloPlay.Main.ForceCalibrationRefresh();
        }

        /// <summary>
        /// This will return the path to the persistent calibration
        /// </summary>
        /// <returns></returns>
        public static string GetConfigPersistentPath()
        {
            string path = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
            path = Path.Combine(path, configCompanyName);
            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            path = Path.Combine(path, configDirName);
            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            path = Path.Combine(path, configFileName);
            return path;
        }

        /// <summary>
        /// Returns the file path for the config at ConfigDrivePath.
        /// If the config directory doesn't exist, one is created!
        /// </summary>
        /// <returns></returns>
        public static string GetConfigDriveFullFilePath()
        {
            if (configDrivePath == "")
                return "";
            string path = Path.Combine(configDrivePath, configDirName);
            if (!Directory.Exists(path)) Directory.CreateDirectory(path);
            path = Path.Combine(path, configFileName);
            return path;
        }

        /// <summary>
        /// This will return the path of the calibration file if it finds it on any of the drives.
        /// If not, it will return the string ""
        /// </summary>
        /// <returns></returns>
        public static string SearchDrivesForConfigPath()
        {
            var dtLatest = DateTime.MinValue;
            var currentPath = "";
            var currentDrive = "";
            foreach(var drive in GetAllDrives())
            {
                string path = Path.Combine(drive, configDirName);
                path = Path.Combine(path, configFileName);
                if (File.Exists(path))
                {
                    var dt = File.GetLastWriteTime(path);
                    if (DateTime.Compare(dt, dtLatest) > 0)
                    {
                        dtLatest = dt;
                        currentPath = path;
                        currentDrive = drive;
                    }
                }
            }
            if (currentDrive != "")
                SetConfigDrivePath(currentDrive);
            return currentPath;
        }

        /// <summary>
        /// Used to set the config drive path 
        /// </summary>
        public static void SetConfigDrivePath(string drivePath)
        {
            configDrivePath = currentlyLoadedConfigPath = drivePath;
        }

        public static string[] GetAllDrives()
        {
            List<string> drives = new List<string>();

            if (Application.isEditor)
            {
                #if UNITY_EDITOR_WIN
                drives.AddRange(Directory.GetLogicalDrives());
                #else
                drives.AddRange(Directory.GetDirectories("/Volumes/"));
                #endif
            }
            else
            {
                #if UNITY_STANDALONE_WIN
                drives.AddRange(Directory.GetLogicalDrives());
                #else
                drives.AddRange(Directory.GetDirectories("/Volumes/"));
                #endif
            }
            for (int i = 0; i < drives.Count;)
            {
                var d = drives[i];
                string testPath = Path.Combine(d, "testForHoloPlaySDK.txt");
                try
                {
                    File.WriteAllText(testPath, "test");
                }
                catch
                {
                    //if the write didn't succeed, remove this entry and continue
                    drives.RemoveAt(i);
                    continue;
                }
                //if it did succeed in writing, delete the test file and increment
                File.Delete(testPath);
                i++;
            }

            return drives.ToArray();
        }
    }
}