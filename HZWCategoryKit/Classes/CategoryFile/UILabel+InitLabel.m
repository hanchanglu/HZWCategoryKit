//
//  UILabel+InitLabel.m
//  LiquoriceDoctorProject
//
//  Created by iMac on 15/8/5.
//  Copyright (c) 2015年 iMac. All rights reserved.
//

#import "UILabel+InitLabel.h"

@implementation UILabel (InitLabel)

+(UILabel *)initLabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)color text:(NSString *)text
{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.font = font;
    label.textColor = color;
    label.text = text;
    return label;
}

+(UILabel *)initLabelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)color
{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.font = font;
    label.textColor = color;
    return label;
}

@end
