package ui.gradientblurview;

import android.graphics.Color;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;


public class RNGradientBlurView extends ViewGroupManager<ViewGroup> {

    public static final String REACT_CLASS = "RNGradientBlurView";

    @Override
    public String getName() {
        return REACT_CLASS;
    }


    @Override
    protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {
        return new FrameLayout(reactContext);
    }
}