//
//  UIColor+common.h
//  Pods
//
//  Created by lzx on 17/4/14.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (common)

+ (instancetype)zx_colorWithHex:(int)hex;

+ (instancetype)zx_colorWithHexString:(NSString *)hexString;

@end
