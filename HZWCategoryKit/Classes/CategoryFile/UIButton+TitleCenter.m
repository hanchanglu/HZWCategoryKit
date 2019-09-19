//
//  UIButton+TitleCenter.m
//  CommonLease
//
//  Created by bocweb on 16/4/15.
//  Copyright © 2016年 bocweb. All rights reserved.
//

#import "UIButton+TitleCenter.h"

@implementation UIButton (TitleCenter)

- (void)setImage:(UIImage *)image withTitle:(NSString *)title {
    
    [self setImage:image forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    
    self.imageEdgeInsets = UIEdgeInsetsMake(-10,15,10, -15);
    self.titleEdgeInsets = UIEdgeInsetsMake(12, -7, -12, 7);
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    
    self.titleLabel.font = [UIFont systemFontOfSize:14.0];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //设置偏移量，让图片与文字居中，
}

@end
