
#import "RNGradientBlurView.h"

@implementation RNGradientBlurView

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()


- (UIView *)view
{
    EZYGradientView *gradientView = [[EZYGradientView alloc] init];
    return gradientView;
}


RCT_CUSTOM_VIEW_PROPERTY(firstColor, NSString *, EZYGradientView) {
    view.firstColor = [RNGradientBlurView colorFromHexCode: json];
}
    
RCT_CUSTOM_VIEW_PROPERTY(secondColor, NSString *, EZYGradientView) {
    view.secondColor = [RNGradientBlurView colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(angle, NSNumber *, EZYGradientView) {
    view.angleº = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(colorRatio, NSNumber *, EZYGradientView) {
    view.colorRatio = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(fadeIntensity, NSNumber *, EZYGradientView) {
    view.fadeIntensity = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(blurOpacity, NSNumber *, EZYGradientView) {
    view.blurOpacity = [json floatValue];
}


+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


@end
  
