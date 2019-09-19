//
//  UIImage+Base64Str.m
//  BocGuest
//
//  Created by Remmo on 15/11/17.
//  Copyright © 2015年 bocweb. All rights reserved.
//

#import "UIImage+Base64Str.h"
#import "UIImage+ScaledSize.h"

#define kImageWidth 750.0

@implementation UIImage (Base64Str)

-(NSString *)base64Str
{
    CGSize imageSize = self.size;
    CGFloat imageW = kImageWidth;
    CGFloat imageH = imageW * imageSize.height / imageSize.width;
    UIImage *newImage = [self imageWithImageSimple:self scaledToSize:CGSizeMake(imageW, imageH)];
    NSData *data = UIImageJPEGRepresentation(newImage, 0.8f);
//    NSData *data = UIImagePNGRepresentation(self);
    NSString *encodedImageStr = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return encodedImageStr;
}

@end
