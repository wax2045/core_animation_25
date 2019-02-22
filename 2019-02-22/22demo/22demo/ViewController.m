//
//  ViewController.m
//  22demo
//
//  Created by fuwang on 2019/2/22.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import "ViewController.h"


@interface NNLabel : UILabel

@end

@implementation NNLabel
+ (Class)layerClass
{
    NSLog(@"%@",[super layerClass]);
    return [CATextLayer class];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)setText:(NSString *)text
{
    super.text = text;
    [self textLayer].string = text;
}
- (CATextLayer *)textLayer
{
    return (CATextLayer *)self.layer;
}
- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    super.backgroundColor = backgroundColor;
    
    [self textLayer].backgroundColor = backgroundColor.CGColor;
    [[self textLayer] display];
}
- (void)setTextColor:(UIColor *)textColor
{
    super.textColor = textColor;
    
    [self textLayer].foregroundColor = textColor.CGColor;
}
@end



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //200
    /*
     UILabel的替代品
     
     CATextLayer虽然有高性能，但是布局不方便
     重写layerClass
     在重写一些font 背景颜色
     
     */
    
//    NNLabel *label = [[NNLabel alloc]init];
//    [self.view addSubview:label];
//    label.frame = CGRectMake(10, 22, 300, 50);
//    label.text = @"Hello new label";
//    label.backgroundColor = [UIColor redColor];
//    label.textColor = [UIColor blueColor];
    
    /*
     CATransformLayer
     不同于普通图层，
     不显示自己，显示子图层
     并不平面化他的子图层
     
     */
    
    //旋转问题看看解决了吗
//    CALayer *backLayer = [CALayer layer];
//    backLayer.backgroundColor = [UIColor blueColor].CGColor;
//    backLayer.frame = CGRectMake(50, 50, 200, 200);
//    CATransform3D transform3D2 = CATransform3DIdentity;
//    transform3D2.m34 = -1.0 / 500;
//    backLayer.transform = CATransform3DRotate(transform3D2, M_PI_4, 0, 1, 0);
//
//
//
//    CALayer *face = [CALayer layer];
//    face.frame = CGRectMake(50, 50, 100, 100);
//
//    face.backgroundColor = [UIColor redColor].CGColor;
//    CATransform3D transform3D = CATransform3DIdentity;
//    transform3D.m34 = -1.0 / 500;
//    face.transform = CATransform3DRotate(transform3D, -M_PI_4, 0, 1, 0);
//    [backLayer addSublayer:face];
//
//
//    CATransformLayer *transformLayer = [CATransformLayer layer];
//    [self.view.layer addSublayer:transformLayer];
//
//    [transformLayer addSublayer:backLayer];
//
//    //对比
//    {
//        CALayer *backLayer = [CALayer layer];
//        backLayer.backgroundColor = [UIColor blueColor].CGColor;
//        backLayer.frame = CGRectMake(50, 50 + 200 + 50, 200, 200);
//        CATransform3D transform3D2 = CATransform3DIdentity;
//        transform3D2.m34 = -1.0 / 500;
//        backLayer.transform = CATransform3DRotate(transform3D2, M_PI_4, 0, 1, 0);
//
//
//
//        CALayer *face = [CALayer layer];
//        face.frame = CGRectMake(50, 50, 100, 100);
//
//        face.backgroundColor = [UIColor redColor].CGColor;
//        CATransform3D transform3D = CATransform3DIdentity;
//        transform3D.m34 = -1.0 / 500;
//        face.transform = CATransform3DRotate(transform3D, -M_PI_4, 0, 1, 0);
//        [backLayer addSublayer:face];
//        [self.view.layer addSublayer:backLayer];
//    }

    /*
     CAGradientLayer
     颜色平滑渐变
     
     多重渐变
     */
//    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
//    gradientLayer.frame = CGRectMake(50, 50, 200, 200);
//    [self.view.layer addSublayer:gradientLayer];
//
//    //中间颜色渐变坐标点
//
//    gradientLayer.locations = @[@0.75,@.85];
//
//    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor blueColor].CGColor];
//    gradientLayer.startPoint = CGPointMake(0.25, 0.25);
//    gradientLayer.endPoint = CGPointMake(0.75, 0.75);
    
    /*
     CAReplicatorLayer
     重复图层
     rotaion旋转重复
     move平移重复
     
     反射
     */
//    CAReplicatorLayer *licatorLayer = [CAReplicatorLayer layer];
//    licatorLayer.borderWidth = 0.5;
//    licatorLayer.frame = CGRectMake(50, 50, 200, 200);
//    [self.view.layer addSublayer:licatorLayer];
//
////    licatorLayer.instanceTransform = CATransform3DMakeRotation(M_PI_4/3, 0, 0, 1);
//    licatorLayer.instanceTransform = CATransform3DMakeTranslation(0, 10, 0);
//    //对子视图进行每次增加在上一个的情形下
//    //旋转的锚点在哪里呢？中点
//
//    licatorLayer.instanceCount = 10;
//
//    licatorLayer.instanceRedOffset = -0.1;
//    licatorLayer.instanceBlueOffset = -0.1;
//
//    CALayer *subLayer = [CALayer layer];
//    subLayer.backgroundColor = [UIColor redColor].CGColor;
//    subLayer.frame = CGRectMake(75+30, 75+30, 50, 50);
//    [licatorLayer addSublayer:subLayer];
    
    
}


@end
