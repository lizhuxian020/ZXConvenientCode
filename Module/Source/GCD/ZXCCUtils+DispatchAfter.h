//
//  ZXCCUtils+DispatchAfter.h
//  ZXConvenientCode
//
//  Created by forzqy on 2018/7/6.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import "ZXCCUtils.h"

@interface ZXCCUtils (DispatchAfter)



/**
 使用 dispatch_after 时候, 第一个入参可以使用这个方法来返回指定日期下的时间来执行

 @param date 指定的日期时间
 @return 返回
 */
+ (dispatch_time_t) getDispatchTimeByDate:(NSDate *)date;

@end
