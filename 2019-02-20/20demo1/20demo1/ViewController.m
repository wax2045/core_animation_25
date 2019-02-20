//
//  ViewController.m
//  20demo1
//
//  Created by fuwang on 2019/2/20.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *d;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *labelBackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     透明则无法显示
     精辟
     
     */
//    CALayer *maskLayer = [CALayer layer];
//    maskLayer.frame = _contentView.bounds;
//    UIImage *image = [UIImage imageNamed:@"mask"];
//    maskLayer.contents = (__bridge id _Nullable)(image.CGImage);
//    _contentView.layer.mask = maskLayer;
//    [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        _contentView.backgroundColor = [UIColor colorWithRed:arc4random()%256/255. green:arc4random()%256/255. blue:arc4random()%256/255. alpha:1];;
//    }];
    
    /*
     拉伸过滤
     minificationFilter 缩小图片
     magnificationFilter 放大图片
     
     线性过滤保留了形状，最近过滤保留了像素
     
     
     */
//    UIImage *image = [UIImage imageNamed:@"number"];
//    for (UIView *view in _d) {
//        view.layer.contents = (__bridge id _Nullable)(image.CGImage);
//        view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1.0);
//        view.layer.magnificationFilter = kCAFilterNearest;
//    }
//
//
//    [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//       //获取时间吗
//        NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierRepublicOfChina];
//        NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
//
//        NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
//
//        [self setDigit:components.hour / 10   view:self.d[0]];
//        [self setDigit:components.hour % 10   view:self.d[1]];
//
//        [self setDigit:components.minute / 10 view:self.d[2]];
//        [self setDigit:components.minute % 10 view:self.d[3]];
//
//        [self setDigit:components.second / 10 view:self.d[4]];
//        [self setDigit:components.second % 10 view:self.d[5]];
//
//
//    }];
    /*
     透明色
     UIview alpha
     CALayer opacity
     
     透明度混合问题
     UIViewGroupOpacity 全局设置图层一个整体一样的透明效果
     会影响APP
     
     CALayer的一个shouldRasterize属性
     
     解决透明度混合问题

     */
//    _label.alpha = 0.8;
//    _labelBackView.alpha = 0.5;
//    _labelBackView.layer.shouldRasterize = YES;
//    _labelBackView.layer.rasterizationScale = [UIScreen mainScreen].scale;
    
    
    /*
     变换
     仿射变换
     创建CGAffineTransform
     就是简单的
     CGAffineTransformMakeRotation()
     CGAffineTransformMakeScale()
     CGAffineTransformMakeTranslation()
     
     混合变换
     CGAffineTransformRotate()
     CGAffineTransformScalue()
     CGAffineTransformTranslate()
     
     
     当操作一个变换的时候，初始化一个什么都不做的变换很重要
     CGAffineTransform
     
     
     */
    //45
//    _contentView.transform = CGAffineTransformMakeRotation(180 / M_PI * 45);
    
    /*
     3D变换
     相比2D变换多来一个z轴
     */
    
    /*
     透视投影
     3D的m34
     CATransform3D
     m34默认为0
     m34 = -1.0 / d
     d 代表想象中视角和屏幕之间的距离
     500 1000
     
     
     */
    
    /*
     灭点
     当远离大一个极限的距离，他们可能就缩成一个点
     这个点通常在视图的中心或者所有3D对象的视图中心
     默认就和anchorPoint重叠
     
     改变一个图层的position你就改变了灭点
     做3D变换时 当调整m34来让他更加3D
     应该先把他放置于屏幕中央
     */
    
    /*
     */
    
    
}
- (void)setDigit:(NSUInteger )digit view:(UIView *)view {
    view.layer.contentsRect = CGRectMake(digit * 0.1, 0, 0.1, 1);
}

@end
