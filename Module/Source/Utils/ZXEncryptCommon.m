//
//  ZXEncryptCommon.m
//  ZXUIKit
//
//  Created by 主贤李 on 2019/3/12.
//

#import "ZXEncryptCommon.h"

@implementation ZXEncryptCommon

+ (UInt32)getSecurityRandomUInt32Value {
    //char: 占一个字节(8位). 这里声明了一个长度为4的数组变量.
    uint8_t randomBytes[4] = {0};
    //int: 占4个字节(32位)
    UInt32 value = 0;
    //通过这个C方法, 开辟内存空间, 并生成4个占一个字节的随机数
    int result = SecRandomCopyBytes(kSecRandomDefault, 4, randomBytes);
    if (result == 0) {
        //把4个字节的随机数拼接起来, 成一个UInt32, *256, 即左移8位.
        value = randomBytes[0] + randomBytes[1] * 256 + randomBytes[2] * 256 * 256 + randomBytes[3] * 256 * 256 * 256;
    } else {
        NSLog(@"SecRandomCopyBytes failed.");
    }
    return value;
}


/**
 ASCII, 一共128个, 编号0~127. 其中0~31和127是控制字符, 一共33个. 其余是显示字符
 占一个字节, 即8位.
 */
- (NSString *)get128BitSecureRandom {
    NSString *randomStr = [NSString string];
    for (int i = 0; i < 16; i++) {
        //随机生成0, 1, 2
        int methodIndex = [ZXEncryptCommon getSecurityRandomUInt32Value] % 3;
        char c;
        switch (methodIndex) {
            case 0:
                //从0~9随机选
                c = '0' + [ZXEncryptCommon getSecurityRandomUInt32Value] % ('9' - '0' + 1);
                break;
            case 1:
                //从a~z随机选
                c = 'a' + [ZXEncryptCommon getSecurityRandomUInt32Value] % ('z' - 'a' + 1);
                break;
            case 2:
                //从A~Z随机选
                c = 'A' + [ZXEncryptCommon getSecurityRandomUInt32Value] % ('Z' - 'A' + 1);
                break;
            default:
                c = '0' + [ZXEncryptCommon getSecurityRandomUInt32Value] % ('9' - '0' + 1);
                break;
        }
        randomStr = [NSString stringWithFormat:@"%@%c", randomStr, c];
    }
    return randomStr;
}

@end
