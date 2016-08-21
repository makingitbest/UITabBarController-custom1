//
//  CustomNavigationController.h
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNavigationController : UINavigationController

/**
 *  在导航栏的创建根视图控制器时,给出隐藏导航栏的属性
 *
 *  @param rootViewController rootViewController
 *  @param hide               是否隐藏导航栏 (目的是想自定制导航栏)
 *
 *  @return CustomNavigationController
 */
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController hideNavigationBar:(BOOL)hide;

@end
