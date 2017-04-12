//
//  NSString+common.m
//  Pods
//
//  Created by lzx on 17/4/12.
//
//

#import "NSString+common.h"

@implementation NSString (common)

- (BOOL)isEmpty {
    return self.length == 0 && !self;
}

@end
