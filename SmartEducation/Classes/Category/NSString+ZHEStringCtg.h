//
//  NSString+ZHEStringCtg.h
//  ZHEducation
//
//  Created by dlj on 2016/11/24.
//  Copyright © 2016年 DLJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (ZHEStringCtg)

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

+(NSAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace;
+(NSAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace andHeadIndet:(CGFloat)headSpac;

#pragma mark  -- 获取高度
+(CGFloat)calculateMeaasgeHeightWithText:(NSString *)string andWidth:(CGFloat)width andFont:(UIFont *)font lineSpace:(CGFloat)lineSpace andHeadIndet:(CGFloat)headSpace andLaabel:(UILabel *) label andLine:(int) line;
@end
