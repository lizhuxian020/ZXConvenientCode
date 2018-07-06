//
//  ZXCCUtils.h
//  ZXConvenientCode
//
//  Created by forzqy on 2018/7/6.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXCCUtils : NSObject


/**
 让 double 型的 source 以小数点分开, 小数部分通过 return 返回, 整形通过 subInt 指针赋值

 @param source 需要分解的 double 数
 @param subInt 整形部分的指针
 @return 小数部分
 */
+ (double)modf:(double)source subInt:(double *)subInt;


/**
 获取当前时间, 以字符串形式返回

 @return 返回当前时间
 */
+ (NSString *)getCurrentDate;


/**
 获取当前时间戳

 @return 返回当前时间戳
 */
+ (NSTimeInterval)getCurrentInterval;

@end
