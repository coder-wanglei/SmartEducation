//
//  UIView+WashCarUtility.m
//  WashCar
//
//  Created by yanshengli on 15-1-7.
//  Copyright (c) 2015年 cheletong. All rights reserved.
//

#import "UIView+WashCarUtility.h"

/***
 *
 *@description:uiview对应的WashCarUtility类别--接口
 *@author:liys
 *@since:2014-1-7
 *@corp:cheletong
 */
@implementation UIView (WashCarUtility)

#pragma mark 去除所有的子视图
-(void)removeAllSubviews
{
    for (UIView *subview in self.subviews)
    {
        [subview removeFromSuperview];
        
    }
}
-(void)makeRoundOnCorner:(UIRectCorner)rectCorner radius:(float)radius{

    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame         = self.bounds;
    maskLayer.path          = maskPath.CGPath;
    [self.layer setMask:maskLayer];
}

@end
