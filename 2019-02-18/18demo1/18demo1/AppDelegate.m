//
//  AppDelegate.m
//  18demo1
//
//  Created by fuwang on 2019/2/18.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()<CALayerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    UIImageView *image;
//    image.contentMode = UIViewContentModeLeft;
    UIImage *imageA = [UIImage imageNamed:@"a"];
    UIImage *imageB = [UIImage imageNamed:@"b"];
    UIImage *imageC = [UIImage imageNamed:@"c"];

    NSLog(@"%f %f %f",imageA.scale,imageB.scale,imageC.scale);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CALayer *layer = [[CALayer alloc]init];
        layer.frame = CGRectMake(0, 0, 375, 667);
        layer.backgroundColor = [UIColor redColor].CGColor;
        layer.contentsScale = [UIScreen mainScreen].scale;
        layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"dd"].CGImage);
        
//        layer.contentsGravity = kCAGravityCenter;
//        layer.contentsRect = CGRectMake(0.25, 0.25, 0.5, 0.5);
        layer.contentsCenter = CGRectMake(0.25, 0.25,0.5, 0.5);
        layer.delegate = self;

        [self.window.layer addSublayer:layer];
        
        [layer display];
        
        NSLog(@"%@",NSStringFromCGPoint(layer.position));
        NSLog(@"%@",NSStringFromCGPoint(layer.anchorPoint));

        
        //旋转木马
        CALayer *runLine = [CALayer new];
        runLine.backgroundColor = [UIColor blueColor].CGColor;
        runLine.frame = CGRectMake(0, 0, 1, 100);
        runLine.position = CGPointMake(375 / 2.0, 667 / 2.0);
        [self.window.layer addSublayer:runLine];
        runLine.anchorPoint = CGPointMake(0.5, 0.9);
        //360 60
        CGFloat onePoint = 2 * M_PI / 60;
        __block CGFloat second = 0;
        //通过加快终端实现不听得转
        [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
            
            runLine.affineTransform = CGAffineTransformMakeRotation(second * onePoint);
            
            second += 0.1;

        }];
        
        runLine.geometryFlipped = YES;
        
//        [runLine convertRect:self.window.frame toLayer:nil];
        
        
        
        
    });
    
    
    
    
    
    
    
    
    return YES;
}
#pragma mark - CALayerDelegate
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    //
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(ctx, 10, 10);
    CGContextAddLineToPoint(ctx, 10, 200);
    [[UIColor yellowColor] set];
    CGContextStrokePath(ctx);
//    CGContextStrokeEllipseInRect(ctx, layer.bounds);
}



@end
