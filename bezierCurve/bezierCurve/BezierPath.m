//
//  BezierPath.m
//  bezierCurve
//
//  Created by 李根 on 16/7/8.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "BezierPath.h"

@implementation BezierPath

- (void)drawRect:(CGRect)rect {
    
//    [self drawTrianglePath];
//    
//    [self drawRectPath];
//    
//    [self drawCircle];
    
//    [self drawCorner];
    
    [self drawRadian];
    
    [self drawSecondBezierPath];
    
    [self drawThirdBezierPath];
}

//  三角形
- (void)drawTrianglePath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(10, 20)];
    [path addLineToPoint:CGPointMake(300, 20)];
    [path addLineToPoint:CGPointMake(150, 150)];
    [path closePath];
    
    //  设置线条宽度
    path.lineWidth = 2.0;
    
    //  填充色必须设置在或阿比颜色前边
    
    //  设置填充颜色
    UIColor *color = [UIColor greenColor];
    [color set];
    [path fill];
    
    //  设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    [path stroke];
}

//  正方形
- (void)drawRectPath {
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(10, 150, 100, 100)];
    path.lineWidth = 1.5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
    [[UIColor redColor] set];
    [path fill];
    
    [path stroke];
}

//  画圆(椭圆)
- (void)drawCircle {
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 120, 200)];
    path.lineWidth = 2.0;
    
    [[UIColor blueColor] set];
    [path fill];
    [path closePath];
}

//  花角
- (void)drawCorner {
    //  矩形的某个角是圆角, cgsizemake用来指定水平和垂直方向的半径大小
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 20, 100, 100) byRoundingCorners:(UIRectCornerTopLeft) cornerRadii:CGSizeMake(100, 20)];
    //  矩形四个角都为圆角
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 150, 150) cornerRadius:10];
    
    path.lineWidth = 1.5;
    [[UIColor redColor] set];
    [path stroke];
    [path closePath];
}

//  画弧
- (void)drawRadian {
    //  startAngle(开始的角度)endAngle(结束的角度) clockwise(是否顺时针画弧)
    
    float PI = 3.1415926;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 100) radius:100 startAngle:(PI * 22) / 180 endAngle:(PI * 180) / 180 clockwise:NO];
    path.lineWidth = 2.0;
    [[UIColor redColor] set];
    [path stroke];
    [path closePath];
}

//  二次贝塞尔曲线(起点+控制点(控制点起牵引作用未必一定要经过)+结束点)
- (void)drawSecondBezierPath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //  首先设置起始点
    [path moveToPoint:CGPointMake(10, 100)];
    
    //  添加曲线
    [path addQuadCurveToPoint:CGPointMake(220, 150) controlPoint:CGPointMake(150, 10)];
    
    path.lineWidth = 2.0;
    
    [[UIColor orangeColor] set];
    
    [path stroke];
    
    [path closePath];
    
}

//  三次贝塞尔曲线(道理同上只是多了一个控制点)
- (void)drawThirdBezierPath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 150)];
    
    [path addCurveToPoint:CGPointMake(330, 150) controlPoint1:CGPointMake(120, 20) controlPoint2:CGPointMake(220, 230)];
    
    path.lineWidth = 2.0;
    
    [[UIColor grayColor] set];
    
    [path stroke];
    
    [path closePath];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
