//
//  NSString+Time.m
//  CommonLease
//
//  Created by bocweb on 16/5/3.
//  Copyright © 2016年 bocweb. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)

- (NSString *)getDateInterval
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CCT"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *currentDate = [NSDate date];
    NSDate *date = [dateFormatter dateFromString:self];
    NSTimeInterval time=[currentDate timeIntervalSinceDate:date];
    NSUInteger seconds = time/60;
    NSUInteger hour = time/3600;
    NSUInteger days=time/(3600*24);
    NSString *timeGap = nil;
    
    if (days > 1 && days <= 30) {
        timeGap = [NSString stringWithFormat:@"%zd天前",days];
        return timeGap;
    } else if (days > 30){
        [dateFormatter setDateFormat:@"MM-dd"];
        timeGap = [dateFormatter stringFromDate:date];
    } else {
        if (seconds <= 1) {
            timeGap = @"1分钟前";
        } else if (seconds > 1 && seconds <= 5) {
            timeGap = @"5分钟前";
        } else if (seconds > 5 && seconds <= 10) {
            timeGap = @"10分钟前";
        } else if (seconds > 10 && seconds <= 30) {
            timeGap = @"30分钟前";
        } else if (seconds > 30 && seconds <= 60) {
            timeGap = @"1小时前";
        } else if (hour > 1 && hour <= 2) {
            timeGap = @"2小时前";
        } else if (hour > 2 && hour <= 3) {
            timeGap = @"3小时前";
        } else if (hour > 3 && hour <= 4) {
            timeGap = @"4小时前";
        } else if (hour > 4 && hour <= 5) {
            timeGap = @"5小时前";
        } else if (hour > 5 && hour <= 6) {
            timeGap = @"6小时前";
        } else if (hour > 6 && hour <= 7) {
            timeGap = @"7小时前";
        }else if (hour > 7 && hour <= 8) {
            timeGap = @"8小时前";
        }else if (hour > 8 && hour <= 9) {
            timeGap = @"9小时前";
        }else if (hour > 9 && hour <= 10) {
            timeGap = @"10小时前";
        }else if (hour > 10 && hour <= 11) {
            timeGap = @"11小时前";
        }else if (hour > 11 && hour <= 12) {
            timeGap = @"12小时前";
        }else if (hour > 12 && hour <= 13) {
            timeGap = @"13小时前";
        }else if (hour > 13 && hour <= 14) {
            timeGap = @"14小时前";
        }else if (hour > 14 && hour <= 15) {
            timeGap = @"15小时前";
        }else if (hour > 15 && hour <= 16) {
            timeGap = @"16小时前";
        }else if (hour > 16 && hour <= 17) {
            timeGap = @"17小时前";
        }else if (hour > 17 && hour <= 18) {
            timeGap = @"18小时前";
        }else if (hour > 18 && hour <= 19) {
            timeGap = @"19小时前";
        }else if (hour > 19 && hour <= 20) {
            timeGap = @"20小时前";
        }else if (hour > 20 && hour <= 21) {
            timeGap = @"21小时前";
        }else if (hour > 21 && hour <= 22) {
            timeGap = @"22小时前";
        }else if (hour > 22 && hour <= 23) {
            timeGap = @"23小时前";
        }else if (hour > 23 && hour <= 24) {
            timeGap = @"24小时前";
        }else {
           
            [dateFormatter setDateFormat:@"MM-dd HH:mm"];
            NSString *t = [dateFormatter stringFromDate:date];
            timeGap = [NSString stringWithFormat:@"%@",t];
        }
    }
    return timeGap;
}

- (NSString *)getDateFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CCT"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self];
    [dateFormatter setDateFormat:@"yyyy.MM.dd"];
    
    return [dateFormatter stringFromDate:date];
}

- (NSString *)getDateTimeFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CCT"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    return [dateFormatter stringFromDate:date];
}

- (NSString *)getDateIntervalFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CCT"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    return [dateFormatter stringFromDate:date];
}

- (NSString *)getMonthAndDay {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"CCT"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self];
    [dateFormatter setDateFormat:@"MM-dd"];
    
    return [dateFormatter stringFromDate:date];
}

@end
