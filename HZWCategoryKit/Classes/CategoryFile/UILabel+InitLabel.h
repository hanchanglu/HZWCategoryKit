//
//  UILabel+InitLabel.h
//  LiquoriceDoctorProject
//
//  Created by iMac on 15/8/5.
//  Copyright (c) 2015年 iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (InitLabel)

+(UILabel *)initLabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)color text:(NSString *)text;
+(UILabel *)initLabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)color;


@end
