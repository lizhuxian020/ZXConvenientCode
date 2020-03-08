//
//  NSString+common.h
//  Pods
//
//  Created by lzx on 17/4/12.
//
//

#import <Foundation/Foundation.h>

@interface NSString (common)

- (BOOL)zx_isPureNum;

- (BOOL)zx_isPureHexNum;

- (NSString *)zx_stringByRemoveAllSpaceAndEnter;

@end
