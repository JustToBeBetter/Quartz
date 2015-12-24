//
//  DashedLine.h
//  SystemPhotos
//
//  Created by 李金柱 on 15/12/24.
//  Copyright © 2015年 Mr.Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashedLine : UIView
@property (nonatomic)        CGPoint startPoint;
@property (nonatomic)        CGPoint endPoint;
@property (nonatomic, strong)UIColor *  lineColor;
@end
