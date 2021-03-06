//
//  NormalContentViewController.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "NormalContentViewController.h"

@implementation NormalContentViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    CGFloat statusAndNCHeight = self.statusBarHeight + self.navigationBarHeight;
    CGFloat contentHeight     = self.screenHeight - statusAndNCHeight;
    
    self.contentView = [[UIView alloc] initWithFrame:CGRectMake(0, statusAndNCHeight, self.screenWidth, contentHeight)];
    [self.view addSubview:self.contentView];
    
    self.titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.screenWidth, statusAndNCHeight)];
    [self.view addSubview:self.titleView];
    
    self.loadingView                        = [[UIView alloc] initWithFrame:CGRectMake(0, statusAndNCHeight, self.screenWidth, contentHeight)];
    self.loadingView.userInteractionEnabled = NO; // 把交互关了,防止无法点击下面的按钮
    [self.view addSubview:self.loadingView];
    
    self.windowView                        = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.windowView.userInteractionEnabled = NO; // 把交互关了,防止无法点击下面的按钮
    [self.view addSubview:self.windowView];
}

@end
