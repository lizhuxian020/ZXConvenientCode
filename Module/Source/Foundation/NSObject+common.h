//
//  NSObject+common.h
//  Pods
//
//  Created by lzx on 17/4/13.
//
//

#import <Foundation/Foundation.h>

#define OBJC_ISEMPTY(obj) NSObject.isEmpty(obj)

typedef BOOL (^isEmptyHandle)(NSObject *objc);

@interface NSObject (common)

+ (isEmptyHandle)isEmpty;

@end
