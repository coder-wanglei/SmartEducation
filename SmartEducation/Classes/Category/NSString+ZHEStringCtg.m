//
//  NSString+ZHEStringCtg.m
//  ZHEducation
//
//  Created by dlj on 2016/11/24.
//  Copyright © 2016年 DLJ. All rights reserved.
//

#import "NSString+ZHEStringCtg.h"

@implementation NSString (ZHEStringCtg)

-(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

+(NSAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace {
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//    paragraphStyle.alignment = NSTextAlignmentCenter;
    paragraphStyle.lineSpacing   = lineSpace; // 调整行间距
    [paragraphStyle setFirstLineHeadIndent:23];//首行缩进
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    NSRange range = NSMakeRange(0, [string length]);
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return attributedString;
}

+(NSAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace andHeadIndet:(CGFloat)headSpace{
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    //    paragraphStyle.alignment = NSTextAlignmentCenter;
    paragraphStyle.lineSpacing   = lineSpace; // 调整行间距
    [paragraphStyle setFirstLineHeadIndent:headSpace];//首行缩进
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    NSRange range = NSMakeRange(0, [string length]);
//    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:range];
//    CGSize maxSize = CGSizeMake(ScreenWidth-40, MAXFLOAT);
   // CGRect contentRect = [attributedString boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return attributedString;
}


-(NSMutableAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace andHeadIndet:(CGFloat)headSpace andLabel:(UILabel *) label andFont:(UIFont *) font{
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    //    paragraphStyle.alignment = NSTextAlignmentCenter;
    paragraphStyle.lineSpacing     = lineSpace; // 调整行间距
    [paragraphStyle setFirstLineHeadIndent:headSpace];//首行缩进
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    NSRange range = NSMakeRange(0, [string length]);
    [attributedString addAttribute:NSFontAttributeName value:font range:range];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    label.attributedText = attributedString;
    return attributedString;
}

+(CGFloat)calculateMeaasgeHeightWithText:(NSString *)string andWidth:(CGFloat)width andFont:(UIFont *)font lineSpace:(CGFloat)lineSpace andHeadIndet:(CGFloat)headSpace andLaabel:(UILabel *) label andLine:(int) line {
    
    static UILabel *stringLabel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{  //生成一个同于计算文本高度的label
        stringLabel = [[UILabel alloc] init];
        stringLabel.numberOfLines = line;
    });
    stringLabel.font = font;
    stringLabel.attributedText = [[NSString alloc] getAttributedStringWithString:string lineSpace:lineSpace andHeadIndet:headSpace andLabel:label andFont:font];
    return [stringLabel sizeThatFits:CGSizeMake(width, MAXFLOAT)].height;
}


@end
