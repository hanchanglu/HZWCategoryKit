//
//  UIButton+InitWithTitle.h
//  LiquoriceDoctorProject
//
//  Created by iMac on 15/8/5.
//  Copyright (c) 2015年 iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (InitWithTitle)

+(UIButton *)initLabelWithFrame:(CGRect)frame titlefont:(UIFont *)font titleColor:(UIColor *)color normalTitle:(NSString *)title tag:(NSInteger)tag;

+(UIButton *)initLabelWithFrame:(CGRect)frame titlefont:(UIFont *)font titleColor:(UIColor *)color normalTitle:(NSString *)title;

@end
