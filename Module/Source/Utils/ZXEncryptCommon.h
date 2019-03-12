//
//  ZXEncryptCommon.h
//  ZXUIKit
//
//  Created by 主贤李 on 2019/3/12.
//

#import <Foundation/Foundation.h>

@interface ZXEncryptCommon : NSObject

/**
 生成随机的32Bit的整型
 PS: 未测试
 */
+ (UInt32)getSecurityRandomUInt32Value;

/**
 随机生成16位的字符串(ASCII)
 PS: 未测试
 */
- (NSString *)get128BitSecureRandom;

@end
