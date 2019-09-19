//
//  NSString+Time.h
//  CommonLease
//
//  Created by bocweb on 16/5/3.
//  Copyright © 2016年 bocweb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Time)

//获取时间间隔
- (NSString *)getDateInterval;

//获取时间2015.11.10
- (NSString *)getDateFormat;

//获取时间格式2015-11-11 10:30
- (NSString *)getDateTimeFormat;

//时间格式2015-11-11
- (NSString *)getDateIntervalFormat;

//时间格式11-11
- (NSString *)getMonthAndDay;
@end
