//
//  CustomNavigationController.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "CustomNavigationController.h"

@implementation CustomNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController hideNavigationBar:(BOOL)hide {

    CustomNavigationController *navigationController = [[[self class] alloc] initWithRootViewController:rootViewController];
    [rootViewController.navigationController setNavigationBarHidden:hide];
    
    return navigationController;
}

@end
