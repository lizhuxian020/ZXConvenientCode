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
        return (BOOL)false;
    };
}

@end
