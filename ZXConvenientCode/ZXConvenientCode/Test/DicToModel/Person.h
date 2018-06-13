//
//  Person.h
//  ZXConvenientCode
//
//  Created by forzqy on 2018/6/13.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_schoolName;
}

@property(nonatomic, copy) NSString *name;

@property(nonatomic, copy) NSArray *family;

@end
