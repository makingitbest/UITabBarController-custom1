//
//  NormalContentViewController.h
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "CustomViewController.h"

@interface NormalContentViewController : CustomViewController

/**
 *  导航栏
 */
@property (nonatomic, strong) UIView *titleView;

/**
 *  导航栏下面的view,一般为了显示数据
 */
@property (nonatomic, strong) UIView *contentView;

/**
 *  加载动画的view
 */
@property (nonatomic, strong) UIView *loadingView;

/**
 *  也是加载的view, 只是frame值不同而已
 */
@property (nonatomic, strong) UIView *windowView;

@end
