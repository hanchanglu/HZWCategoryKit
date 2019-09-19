//
//  UIButton+InitWithTitle.m
//  LiquoriceDoctorProject
//
//  Created by iMac on 15/8/5.
//  Copyright (c) 2015年 iMac. All rights reserved.
//

#import "UIButton+InitWithTitle.h"

@implementation UIButton (InitWithTitle)

+(UIButton *)initLabelWithFrame:(CGRect)frame titlefont:(UIFont *)font titleColor:(UIColor *)color normalTitle:(NSString *)title tag:(NSInteger)tag;
{
    UIButton * button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = frame;
    [button setTitle:title forState:(UIControlStateNormal)];
    [button setTitleColor:color forState:(UIControlStateNormal)];
    button.titleLabel.font = font;
    
    if (tag>=0) {
        button.tag = tag;
    }
    
    return button;
}

+(UIButton *)initLabelWithFrame:(CGRect)frame titlefont:(UIFont *)font titleColor:(UIColor *)color normalTitle:(NSString *)title
{
    
    return [UIButton initLabelWithFrame:frame titlefont:font titleColor:color normalTitle:title tag:-1];
    
}

@end
