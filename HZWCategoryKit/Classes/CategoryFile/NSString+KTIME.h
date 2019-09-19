//
//  NSString+KTIME.h
//  CommonLease
//
//  Created by 候候志伟 on 16/5/26.
//  Copyright © 2016年 bocweb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (KTIME)

//获取时间间隔
- (NSString *)GetDateInterval;

//获取时间2015.11.10
- (NSString *)getDateFormat;

//获取时间格式2015-11-11 10:30
- (NSString *)getDateTimeFormat;

//时间格式2015-11-11
- (NSString *)getDateIntervalFormat;

//时间格式11-11
- (NSString *)getMonthAndDay;


@end
