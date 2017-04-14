//
//  NSObject+common.m
//  Pods
//
//  Created by lzx on 17/4/13.
//
//

#import "NSObject+common.h"

@implementation NSObject (common)

+ (isEmptyHandle)isEmpty {
    return ^(NSObject *objc){
        BOOL result = false;
        if (objc == nil) {
            result = true;
        } else if ([objc isKindOfClass:[NSString class]]) {
            NSString *str = (NSString *)objc;
            result = str.length == 0;
        } else if ([objc isKindOfClass:[NSArray class]]) {
            NSArray *arr = (NSArray *)objc;
            result = arr.count == 0;
        } else if ([objc isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dic = (NSDictionary *)objc;
            result = dic.allKeys.count == 0;
        }
        return result;
    };
}

@end
