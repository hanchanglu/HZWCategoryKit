//
//  UIView+XIB.h
//  TravelGuideMdd
//
//  Created by Song Xiaofeng on 13-5-29.
//  Copyright (c) 2013年 mafengwo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XIB)
+ (id)instanceWithNib:(UINib *)nib owner:(id)owner;
+ (id)instanceWithNibName:(NSString *)nib owner:(id)owner;

+ (id)instanceFromNib;

@end
