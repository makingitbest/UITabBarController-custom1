//
//  CustomViewController.h
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewController : UIViewController

/**
 *  屏幕的宽度
 */
@property (nonatomic, readonly) CGFloat screenWidth;

/**
 *  屏幕的高度
 */
@property (nonatomic, readonly) CGFloat screenHeight;

/**
 *  导航栏高度
 */
@property (nonatomic, readonly) CGFloat navigationBarHeight;

/**
 *  状态栏的高度,就是电池,无线标志的地方
 */
@property (nonatomic, readonly) CGFloat statusBarHeight;

/**
 *  返回上级ViewController
 */
- (void)popViewController;

/**
 *  给返回上一级页面添加手势
 */
- (void)useInteractivePopGestureRecognizer;

/**
 *  在创建的rootViewController里面的页面消失,页面出现,手动调用,用来关闭或者开启手势
 *
 *  @param enable yes or no
 */
- (void)enablePopGesture:(BOOL)enable;

@end
