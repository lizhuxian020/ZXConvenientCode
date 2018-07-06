//
//  ZXCCUtils.m
//  ZXConvenientCode
//
//  Created by forzqy on 2018/7/6.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import "ZXCCUtils.h"

@implementation ZXCCUtils

+ (double)modf:(double)source subInt:(double *)subInt {
    return modf(source, subInt);
}

+ (NSString *)getCurrentDate {
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSTimeZone *z_t = [NSTimeZone timeZoneWithName:@"Asia/Hong_Kong"];
    [formatter setTimeZone:z_t];
    
    return [formatter stringFromDate:[NSDate date]];
}

+ (NSTimeInterval)getCurrentInterval {
    return [[NSDate date] timeIntervalSince1970];
}

@end
