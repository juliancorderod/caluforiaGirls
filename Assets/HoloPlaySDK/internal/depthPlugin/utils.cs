using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Object = UnityEngine.Object;

namespace HoloPlaySDK
{

    public class utils
    {

        public static float angleBetweenPoints(Vector2 v1, Vector2 v2)
        {
            return Mathf.Atan2(v1.x - v2.x, v1.y - v2.y) * Mathf.Rad2Deg;
        }


        /// <summary>
        /// Gets a depth value from the raw depth texture
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        public static System.UInt16 colorToDepth16( Color32 c)
        {
            return (System.UInt16)((c.g << 8) | c.r);
        }


        /// <summary>
        /// Converts a color value coming in from the depth plugin, and compresses it into an 8 bit depth value
        /// </summary>
        /// <param name="c">the corresponding color from the incoming depth map</param>
        /// <param name="thresholdDistance">the farthest distance that you care to represent in the 8 bits, smaller will give you more precision.  A too low value will cause the value to loop over, causing banding.</param>
        /// <returns></returns>
        public static byte colorToDepth8( Color32 c, float thresholdDistance)
        {

            System.UInt16 v = colorToDepth16(c);

            if (v == 0)
                return 0;

            int p = (int)(((float)v / thresholdDistance) * 127f);

          //  if (p > 35) //this is a noise threshold. Sometimes the low values are not accurate.
                return  (byte)(255 - p); //the first int here is a noise threshold.
                                      //p = 255 - p;
          //  return 0;
        }
    }

}
