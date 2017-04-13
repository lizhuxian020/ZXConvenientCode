//
//  NSString+common.h
//  Pods
//
//  Created by lzx on 17/4/12.
//
//

#import <Foundation/Foundation.h>

typedef bool (^isEmptyString)(NSString *string);

@interface NSString (common)

+ (isEmptyString)isEmpty;

@end
