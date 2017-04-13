//
//  NSObject+common.h
//  Pods
//
//  Created by lzx on 17/4/13.
//
//

#import <Foundation/Foundation.h>

typedef bool (^isEmptyHandle)(NSObject *objc);

@interface NSObject (common)

+ (isEmptyHandle)isEmpty;

@end
