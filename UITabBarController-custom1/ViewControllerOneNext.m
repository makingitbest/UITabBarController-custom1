//
//  ViewControllerOneNext.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "ViewControllerOneNext.h"
#import "ViewControllerOneNextOne.h"
#import "GCD.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+Convenience.h"

@implementation ViewControllerOneNext

- (void)viewDidLoad {

    [super viewDidLoad];
    
    UIButton *button       = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, self.screenWidth - 100, 44)];
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"加载时,没法点我,等着吧" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:13];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:button];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedToLoadingView:self.loadingView text:@"加载数据中..."];
    
    [GCDQueue executeInMainQueue:^{
        
        [hud hideInLoadingView];
        
    } afterDelaySecs:5.f];
}

- (void)buttonClick:(UIButton *)button {
    
    ViewControllerOneNextOne *oneNextOne = [[ViewControllerOneNextOne alloc] init];
    oneNextOne.title                     = @"oneNextOne";
    [self.navigationController pushViewController:oneNextOne animated:YES];
}


@end
