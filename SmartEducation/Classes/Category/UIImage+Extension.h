//
//  UIImage+Extension.h
//  ZHTeacherEnd
//
//  Created by dlj on 2016/12/28.
//  Copyright © 2016年 DLJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface UIImage (Extension)
// 裁剪后旋转
- (UIImage *)cutImage:(UIImage *)srcImg;
#pragma 等比例压缩图片
-(UIImage *) compressForSize:(CGSize)size;
+(UIImage *) imageCompressForSize:(UIImage *)sourceImage targetSize:(CGSize)size;
-(UIImage*)scaleToSize:(CGSize)size;
+(UIImage *)getScreenShotImageFromVideoPath:(NSString *)filePath;
@end
