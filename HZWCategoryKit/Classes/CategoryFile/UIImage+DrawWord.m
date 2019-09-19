//
//  UIImage+DrawWord.m
//  Sunvary
//
//  Created by BocWeb on 16/1/23.
//  Copyright © 2016年 bocweb. All rights reserved.
//

#import "UIImage+DrawWord.h"

@implementation UIImage (DrawWord)
+( UIImage *)createShareImage:( NSString *)str name:( NSString *)name number:( NSString *)number grade:( NSString *)grade

{
    
    UIImage *image = [ UIImage imageNamed : @"exam_record_bg" ];
    
    CGSize size= CGSizeMake (image. size . width, image. size . height ); // 画布大小
    
    UIGraphicsBeginImageContextWithOptions (size, NO , 0.0 );
    
    [image drawAtPoint : CGPointMake (0,0)];
    
    // 获得一个位图图形上下文
    
    CGContextRef context= UIGraphicsGetCurrentContext ();
    CGContextDrawPath (context, kCGPathStroke );
     NSString *firstStr=[str substringWithRange:NSMakeRange(0,1)];
     NSString *secondStr=[str substringWithRange:NSMakeRange(1,1)];
     NSString *thereStr=[str substringWithRange:NSMakeRange(2,1)];
     NSString *fourStr=[str substringWithRange:NSMakeRange(3,1)];
    [firstStr drawAtPoint : CGPointMake (20 ,image. size . height * 0 ) withAttributes : @{ NSFontAttributeName :[ UIFont fontWithName : @"Arial-BoldMT" size : 10 ], NSForegroundColorAttributeName :[ UIColor whiteColor ] } ];
     [secondStr drawAtPoint : CGPointMake (30 ,image. size . height * 0.2 ) withAttributes : @{ NSFontAttributeName :[ UIFont fontWithName : @"Arial-BoldMT" size : 10 ], NSForegroundColorAttributeName :[ UIColor whiteColor ] } ];
     [thereStr drawAtPoint : CGPointMake (45 ,image. size . height * 0.4 ) withAttributes : @{ NSFontAttributeName :[ UIFont fontWithName : @"Arial-BoldMT" size : 10 ], NSForegroundColorAttributeName :[ UIColor whiteColor ] } ];
     [fourStr drawAtPoint : CGPointMake (60,image. size . height * 0.6 ) withAttributes : @{ NSFontAttributeName :[ UIFont fontWithName : @"Arial-BoldMT" size : 10 ], NSForegroundColorAttributeName :[ UIColor whiteColor ] } ];
    // 返回绘制的新图形
    UIImage *newImage= UIGraphicsGetImageFromCurrentImageContext ();
    
    UIGraphicsEndImageContext ();
    
    return newImage;
    
}
@end
