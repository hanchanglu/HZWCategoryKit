//
//  UINavigationController+OLStatusBarStyle.m
//  ServeClient
//
//  Created by 候志伟 on 16/11/3.
//  Copyright © 2016年 hzw. All rights reserved.
//

#import "UINavigationController+OLStatusBarStyle.h"

@implementation UINavigationController (OLStatusBarStyle)

- (UIViewController *)childViewControllerForStatusBarStyle{
    　　return  self.visibleViewController;
}
- (UIViewController *)childViewControllerForStatusBarHidden{
    　　return self.visibleViewController;
}

@end
