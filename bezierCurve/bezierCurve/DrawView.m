//
//  DrawView.m
//  bezierCurve
//
//  Created by 李根 on 16/7/8.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
//    [self drawLine];
//    
//    [self drawCurve];
    
//    [self drawAnotherCurve];
    
    [self drawCircle];
    
//    [self drawChangFang];
}

- (void)drawLine {
    CGContextRef context = UIGraphicsGetCurrentContext();
    //  画线
    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);   //  线条颜色
    CGContextSetLineWidth(context, 2.0);    //  线条宽度
    CGContextMoveToPoint(context, 10, 20);
    CGContextAddLineToPoint(context, 300, 20);
    CGContextStrokePath(context);
}

- (void)drawCurve {
    CGContextRef context = UIGraphicsGetCurrentContext();
    //  绘制贝塞尔曲线
    //  贝塞尔曲线是通过一个起始点, 两个控制点, 一个结束点, 来绘制函数的.
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, 10, 40);
    CGContextAddCurveToPoint(context, 20, 350, 100, 40, 300, 240);
    CGContextStrokePath(context);
}

- (void)drawAnotherCurve {
    //  连续的曲线
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextMoveToPoint(context, 10, 80);
    CGContextAddCurveToPoint(context, 50, 200, 150, 300, 300, 250);
    CGContextAddCurveToPoint(context, 300, 300, 30, 150, 40, 400);
    CGContextStrokePath(context);
}

- (void)drawCircle {
    //  画圆
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddArc(context, 150, 70, 50, 0, 2 * M_PI, 0);
    [[UIColor redColor] set];
    
    CGContextFillPath(context);
}

- (void)drawChangFang {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 10, 10, 100, 100);
    
    CGContextSetLineWidth(context, 2.0);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
