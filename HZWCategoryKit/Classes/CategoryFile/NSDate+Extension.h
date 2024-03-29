//
//  NSDate+Extension.h
//  Sunvary
//
//  Created by LiXiaoPeng on 16/05/20.
//  Copyright © 2015年 bocweb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

/// 日期描述字符串
///
/// 格式如下
///     -   刚刚(一分钟内)
///     -   X分钟前(一小时内)
///     -   X小时前(当天)
///     -   昨天 HH:mm(昨天)
///     -   MM-dd HH:mm(一年内)
///     -   yyyy-MM-dd HH:mm(更早期)
- (NSString *)ff_dateDescription;

@end
