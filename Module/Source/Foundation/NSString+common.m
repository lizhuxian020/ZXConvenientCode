//
//  NSString+common.m
//  Pods
//
//  Created by lzx on 17/4/12.
//
//

#import "NSString+common.h"

@implementation NSString (common)

+ (isEmptyString)isEmpty {
    return  ^(NSString *string) {
        if (string == nil || !string || string.length == 0) {
            return (BOOL)true;
        }
        return (BOOL)false;
    };
}

@end
