//
//  UIButton+Extension.m
//  Sunvary
//
//  Created by 李晓鹏 on 16/05/20.
//  Copyright © 2015年 bocweb. All rights reserved.
//

#import "UIButton+Extension.h"

/// 标题默认颜色
#define kItemTitleColor ([UIColor colorWithWhite:80.0 / 255.0 alpha:1.0])
/// 标题高亮颜色
#define kItemTitleHighlightedColor ([UIColor orangeColor])
/// 标题字体大小
#define kItemFontSize   14

@implementation UIButton (Extension)

+ (instancetype)ff_buttonWithTitle:(NSString *)title imageName:(NSString *)imageName target:(id)target action:(SEL)action {
    
    UIButton *button = [[self alloc] init];
    
    // 设置图像
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        NSString *highlighted = [NSString stringWithFormat:@"%@_highlighted", imageName];
        [button setImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    }
    
    // 设置标题
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:kItemTitleColor forState:UIControlStateNormal];
    [button setTitleColor:kItemTitleHighlightedColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:kItemFontSize];
    
    [button sizeToFit];
    
    // 监听方法
    if (action != nil) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    return button;
}

+ (instancetype)ff_buttonWithTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize imageName:(NSString *)imageName backImageName:(NSString *)backImageName {
    
    UIButton *button = [[UIButton alloc] init];
    
    // 设置标题
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    // 图片
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
        NSString *highlighted = [NSString stringWithFormat:@"%@_highlighted", imageName];
        [button setImage:[UIImage imageNamed:highlighted] forState:UIControlStateHighlighted];
    }
    
    // 背景图片
    if (backImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
        
        NSString *backHighlighted = [NSString stringWithFormat:@"%@_highlighted", backImageName];
        [button setBackgroundImage:[UIImage imageNamed:backHighlighted] forState:UIControlStateHighlighted];
    }
    
    return button;
}

+ (instancetype)ff_buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor backImageName:(NSString *)backImageName {
    
    UIButton *button = [[UIButton alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:backImageName] forState:UIControlStateNormal];
    
    return button;
}

@end
