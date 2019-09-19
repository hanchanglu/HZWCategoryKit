//
//  UIView+XIB.m
//  TravelGuideMdd
//
//  Created by Song Xiaofeng on 13-5-29.
//  Copyright (c) 2013年 mafengwo.com. All rights reserved.
//

#import "UIView+XIB.h"

@implementation UIView (XIB)

+ (id)instanceWithNib:(UINib *)nib owner:(id)owner;
{
    if (!nib) return nil;
    
    NSArray *objects = [nib instantiateWithOwner:owner options:nil];
    
    NSInteger index = [objects indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        
        return [obj isKindOfClass:[self class]];
        
    }];
    
    NSAssert(index != NSNotFound, @"not found object in xib");
    
    return [objects objectAtIndex:index];
}

+ (id)instanceWithNibName:(NSString *)nibName owner:(id)owner;
{
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    
    return [self instanceWithNib:nib owner:owner];
}

+ (id)instanceFromNib
{
    return [self instanceWithNibName:NSStringFromClass(self) owner:nil];
}

@end
