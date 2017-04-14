//
//  UIColor+common.m
//  Pods
//
//  Created by lzx on 17/4/14.
//
//

#import "UIColor+common.h"

@implementation UIColor (common)

+ (instancetype)zx_colorWithRGB:(NSString *)color {
    if ([color hasPrefix:@"#"]) {
        color = [color substringFromIndex:0];
    }
    NSLog(@"%d", color.integerValue);
    return [UIColor whiteColor];
}

@end
