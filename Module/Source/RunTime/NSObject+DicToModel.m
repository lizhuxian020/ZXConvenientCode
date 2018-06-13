//
//  NSObject+DicToModel.m
//  ZXConvenientCode
//
//  Created by forzqy on 2018/6/13.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import "NSObject+DicToModel.h"
#import <objc/runtime.h>

@implementation NSObject (DicToModel)

+ (instancetype)modelWithDic:(NSDictionary *)dic {
    id model = [[self alloc] init];
    unsigned int count = 0;
    //拿到成员变量列表
    Ivar *ivarList = class_copyIvarList(self, &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivarList[i];
        const char *keyName = ivar_getName(ivar);
        //拿到成员变量名
        NSString *key = [NSString stringWithUTF8String:keyName];
        //去除开头的_
        key = [key substringFromIndex:1];
        id value = [dic objectForKey:key];
        if (value) {
            [model setValue:value forKey:key];
        }
    }
    return model;
}

@end
