//
//  UIColor+common.m
//  Pods
//
//  Created by lzx on 17/4/14.
//
//

#import "UIColor+common.h"
#import "NSString+common.h"

@implementation UIColor (common)

+ (instancetype)zx_colorWithHexString:(NSString *)hexString {
    [hexString hasPrefix:@"#"] ? hexString = [hexString substringFromIndex:1] : nil;
    [hexString hasPrefix:@"0x"] ? hexString = [hexString substringFromIndex:2] : nil;
    UIColor *result = nil;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    unsigned int hexnum;
    if ([scanner scanHexInt:&hexnum]) {
//        const char *char_str = [color cStringUsingEncoding:NSASCIIStringEncoding];
//        int hexNum;
//        sscanf(char_str, "%x", &hexNum);
        result = [self zx_colorWithHex:hexnum];
    }
    return result;
}

+ (instancetype)zx_colorWithHex:(int)hex {
    if (hex >= 0x0 && hex <= 0xFFFFFF) {
        return [UIColor colorWithRed:((hex & 0xFF0000) >> 16) / 255.0f
                               green:((hex & 0x00FF00) >> 8) / 255.0f
                                blue:((hex & 0x0000FF) >> 0) / 255.0f
                               alpha:1.];
    } else if (hex >= 0 && hex <= 0xFFFFFFFF) {
        return [UIColor colorWithRed:((hex & 0xFF0000) >> 16) / 255.0f
                               green:((hex & 0x00FF00) >> 8) / 255.0f
                                blue:((hex & 0x0000FF) >> 0) / 255.0f
                               alpha:((hex & 0xFF000000) >> 24) / 255.0f];
    }
    return [UIColor blueColor];
}

@end
