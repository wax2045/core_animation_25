//
//  ViewController.m
//  19demo
//
//  Created by fuwang on 2019/2/19.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//75 100
- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     z坐标轴
     zPosition 和 anchorPointZ
     图层是一个完全扁平的对象
     zPosition最大的功能就是改变图层的显示顺序
     
     
     Hit Testing
     判断该点是否在layer上
     containsPoint: 返回BOOL
    
     hitTest: 返回图层本身或者子节点
     测算严格按照图层顺序顺序返回，如果改变z轴顺序，将不能检测
     
     自动布局
     layerDelegate
     - (void)layoutSublayersOfLayer:(CALayer *)layer
     建议用视图而不是图层
     
     视觉效果
     圆角
     cornerRadius
     
     阴影
     shadowColor、shadowoffset和shadowRadius
     shadowRadius是控制阴影的模糊度
     
     阴影和裁剪放在一起
     外加一个shadow图片
     
     shadowPath
     设置阴影形状
     
     图层蒙版
     
     
     
     
     
     
     */
    
}


@end
