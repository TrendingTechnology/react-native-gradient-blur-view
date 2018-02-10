using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Gradient.Blur.View.RNGradientBlurView
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNGradientBlurViewModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNGradientBlurViewModule"/>.
        /// </summary>
        internal RNGradientBlurViewModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNGradientBlurView";
            }
        }
    }
}
