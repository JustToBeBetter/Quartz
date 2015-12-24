//
//  DashedLine.m
//  SystemPhotos
//
//  Created by 李金柱 on 15/12/24.
//  Copyright © 2015年 Mr.Li. All rights reserved.
//

#import "DashedLine.h"

@implementation DashedLine



- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.startPoint = CGPointMake(CGRectGetHeight(self.frame)/2,CGRectGetHeight(self.frame)/2);
        self.endPoint = CGPointMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)/2);
        self.lineColor = [UIColor redColor];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(context);
    
    CGContextSetLineWidth(context,2);//线宽度
    
    CGContextSetStrokeColorWithColor(context,self.lineColor.CGColor);
    
    CGFloat lengths[] = {10,10};//先画10个点 跳过10个点 再画10个点依次往复
    
    CGContextSetLineDash(context,0, lengths,2);//注意2(count)的值等于lengths数组的长度 参数phase为第一个跳过的点数
    
    CGContextMoveToPoint(context,self.startPoint.x,self.startPoint.y);
    
    CGContextAddLineToPoint(context,self.endPoint.x,self.endPoint.y);
    
    CGContextStrokePath(context);
    
    CGContextClosePath(context);
}

@end
