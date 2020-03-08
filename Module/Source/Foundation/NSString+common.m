//
//  NSString+common.m
//  Pods
//
//  Created by lzx on 17/4/12.
//
//

#import "NSString+common.h"

@implementation NSString (common)

- (BOOL)zx_isPureNum {
    //    123123asd.123asd.qwe123 - >asd.123asd.qwe
    NSString *exchangeStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    return exchangeStr.length == 0;
}

- (BOOL)zx_isPureHexNum {
    //    123123asd.123asd.qwe123 - >sd.123asd.qw
//    NSString *exchangeStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"1234567890abcdefABCDEF"]];
//    return exchangeStr.length == 0;
    NSScanner *scanner = [NSScanner scannerWithString:self];
    unsigned int hexNumber;
    BOOL result = [scanner scanHexInt:&hexNumber];
    return result;
}

- (NSString *)zx_stringByRemoveAllSpaceAndEnter {
    NSString *temp = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return temp;
}

@end
