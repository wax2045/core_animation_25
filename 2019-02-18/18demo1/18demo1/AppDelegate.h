//
//  AppDelegate.h
//  18demo1
//
//  Created by fuwang on 2019/2/18.
//  Copyright © 2019 Fuwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

/*
 75页的高度
 CALayer不处理用户的交互
 为什么不用一个简单的层级来处理所有事情呢？
 有Mac端和iOS端
 能够在之间共享代码
 其实不止这两个层，有四个层
 
 为何要学CALayer
 CALayer是UIView的内部实现细节，
 但是UIView没有暴露CALayer的一些功能
 阴影 圆角 带颜色的边框
 3D变换
 非矩形范围
 透明遮罩
 多级非线性动画
 
 什么时候要使用CALayer呢
 开发跨平台应用
 不想创建额外的UIView去包装
 做一些对性能特别挑剔的工作
 
 寄宿图（图层中包含图）
 contents只对CGImage和NSImage起作用
 最终是 CGImageRef 指针
 //Gravity重力
 contentsGravity（contentMode的操作对象）
 
 contentsScale 像素尺寸和视图大小的比例，默认他是一个值为1.0的浮点数
 Retine 每个点2个像素绘制
 
 当用代码处理寄宿图层的时候，一定要手动设置图层的contentsScale否则在retina会不正确
 layer.contentsScale = [UIScreen mainScreen].scale;
 
 裁边框
 maskToBounds
 等价于
 clipsToBounds
 
 内容范围
 拉伸聊天冒泡是关键
 contentsRect 相对于寄宿图的尺寸，使用单位坐标来计算
 在原来的基础上进行裁剪在展示到全局
 是的
 image sprites（图片拼合）
 图片拼合后可以打包一整张大图一次性载入
 
 contentsCenter
 这个才是气泡拉伸
 它定义了一个固定的边框和在图层上可拉伸的区域
 改变contentsCenter并不会影响到寄宿图的显示，除非这个图层大大小改变了
 没绿明白
 
 有三种情况会生成寄宿图
 一种是给contents赋CGImage时
 另一种
 Custom Drawing
 如果实现了drawRect，就会为视图分配一个寄宿图
 尺寸为视图大小乘以contentsScale的值
 
 1.drawRect
 通常在view上实现drawRect方法就好了
 
 
 2.代理 记得调用display
 开发者自己去掉用display
 
 
 几何学
 position
 默认0.5，0.5 ？
 anchorPoint？
 
 {187.5, 333.5}
 {0.5, 0.5}
 
 position对应着center
 锚点是一个奇怪的点
 不能独立于图层之外改变视图的frame
 
 frame实际是根据bounds、position、transform计算而来
 
 记住当对图层做变换的时候，旋转或者缩放，frame实际代表了图层旋转之后的矩形区域
 
 锚点
 anchorPoint
 是移动图层的把柄
 
 这样理解
 anchorPoint默认是0.5，0.5，在原来（0.5，0.5）的基础上锚点坐标不变，但以视图的那个部位去贴近锚点
 不要怕用的很少，只是在旋转的时候回用到
 
 坐标系
 主要提供了坐标转换的工具类方法
 估计是你把其他的视图当成父视图去计算
 - (cgrect)convertRect:(CGRect)rect fromLayer:(CALayer *)layer;
 
 翻转几何结构
 翻转坐标原点
 iOS 左上角
 Macos 左下角
 geometryFlipped适配
 
 Z坐标轴
 UIView二维坐标系
 CALayer三维坐标系
 
 
 
 
 
 
 
 */


