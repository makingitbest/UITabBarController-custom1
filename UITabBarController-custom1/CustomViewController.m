//
//  CustomViewController.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController () <UIGestureRecognizerDelegate>

@property (nonatomic) CGFloat screenWidth;

@property (nonatomic) CGFloat screenHeight;

@property (nonatomic) CGFloat navigationBarHeight;

@property (nonatomic) CGFloat statusBarHeight;

@end

@implementation CustomViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.screenWidth  = [UIScreen mainScreen].bounds.size.width;
    self.screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    self.navigationBarHeight = 44.f;
    self.statusBarHeight     = 20.f;
}

- (void)popViewController {

    [self.navigationController popViewControllerAnimated:YES]; // 这里处理系统返回上级页面的方法
}

- (void)useInteractivePopGestureRecognizer {

    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)enablePopGesture:(BOOL)enable {
    
    self.navigationController.interactivePopGestureRecognizer.enabled = enable;
}

@end
