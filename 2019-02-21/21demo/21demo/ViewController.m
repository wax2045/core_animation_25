//
//  ViewController.m
//  21demo
//
//  Created by fuwang on 2019/2/21.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *content1;
@property (weak, nonatomic) IBOutlet UIImageView *content2;
@property (weak, nonatomic) IBOutlet UIView      *backView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //150
    /*
     sublayerTransform
     多个视图或图层都做3D变换，要确保共享同一个position
     
     CALayer的属性sublayerTransfor影响到多有子图层
     它也是CATransform类型
     这样不需要设置灭点了
     可以随意设置position和frame
     
     没对m34赋值 透视效果都没有
     效果杠杠的
     */
//    _content1.layer.transform = CATransform3DMakeRotation(-M_PI_2/3, 1, 0, 0);
//    _content2.layer.transform = CATransform3DMakeRotation(M_PI_2/3, 1, 0, 0);
//
//    CATransform3D transfrm3D = CATransform3DIdentity;
//    transfrm3D.m34 = -1.0 / 500;
//    _backView.layer.sublayerTransform = transfrm3D;
    
    /*
     背景
     旋转180度
     完全背对相机界面
     doubleSided 默认双面
     
     */
//    _content1.layer.transform = CATransform3DMakeRotation(-M_PI, 0, 1, 0);
//    _content2.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
//    _content2.layer.doubleSided = NO;
    
    /*
     扁平化图层
     
     */
    //相互翻转中和反应 z轴可以中和
//    _backView.layer.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
//    _content2.layer.transform = CATransform3DMakeRotation(-M_PI_4, 0, 0, 1);
    
    //y轴
    //抵消不了了
    //子和父不能使用sublayerTransform
//    CATransform3D transform3D = CATransform3DIdentity;
//    transform3D.m34 = -1.0 / 500;
//    transform3D = CATransform3DRotate(transform3D, -M_PI_4, 0, 1, 0);
//    _backView.layer.transform = transform3D;
//
//    CATransform3D transform3D2 = CATransform3DIdentity;
//    transform3D2.m34 = -1.0 / 500;
//    transform3D2 = CATransform3DRotate(transform3D2, M_PI_4, 0, 1, 0);
//    _content2.layer.transform = transform3D2;
    
    /*
     固体对象
     创建视图 平移 旋转
     
     
     */
    
    /*
     专用图层
     
     CAShapeLayer
     路径渲染图形
     对比Core Graphics向CALayer绘制
     渲染快速
     高效使用内存，不需要创建寄宿图
     不会被图层边界裁剪掉
     不会出现像素化
     
     创建一个CGPath
     一个图层面只有一次机会设置这些属性 lineWith 、lineCap、lineJoin
     如果要设置不同风格来绘制，多个形状
     
     火柴人
     
     
     */
//    CGFloat centerX = 375 / 2.0;
//    UIBezierPath *path = [[UIBezierPath alloc]init];
//    [path moveToPoint:CGPointMake(centerX, 200)];
//    [path addArcWithCenter:CGPointMake(centerX - 30, 200) radius:30 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
//
//    CAShapeLayer *layer = [CAShapeLayer layer];
//    layer.fillColor = [UIColor redColor].CGColor;
//    layer.strokeColor = [UIColor blueColor].CGColor;
//    layer.lineWidth = 4;
//
//    layer.path = path.CGPath;
//
//    [self.view.layer addSublayer:layer];
    
    /*
     圆角矩形
     
     */
//    UIRectCorner corners = UIRectCornerTopLeft | UIRectCornerBottomRight;
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:_backView.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(10, 10)];
//    CAShapeLayer *layer = [CAShapeLayer layer];
//    layer.path = path.CGPath;
//    //看不见的隐藏
//    //设置了圆角就看不见了
//    _backView.layer.mask = layer;
    
    /*
     CATextLayer
     来实现一个label
     
     
     */
    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = CGRectMake(10, CGRectGetMaxY(_backView.frame) + 10, 100, 50);
    textLayer.foregroundColor = [UIColor redColor].CGColor;
    textLayer.string = @"Hello textLayer";
    
    UIFont *font = [UIFont systemFontOfSize:15];
    CFStringRef fontName = (__bridge CFStringRef)(font.fontName);
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    textLayer.contentsScale = [UIScreen mainScreen].scale;
    [self.view.layer addSublayer:textLayer];
    
    /*
     富文本
     CATextLayer的string属性是id类型，同时也支持NSMutableString
     
     */
    
    /*
     UILabel的替代品
     相比于CATextLayer 有着更好的性能
     
     */
    
    
}


@end
