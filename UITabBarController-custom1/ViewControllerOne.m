//
//  ViewControllerOne.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "ViewControllerOne.h"
#import "ViewControllerOneNext.h"

@implementation ViewControllerOne

- (void)viewDidLoad {

    [super viewDidLoad];
    
    [self useInteractivePopGestureRecognizer]; // 打开手势
    
    // 通过枚举,隐藏或者修改一些控件的信息
    [self.titleView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[UILabel class]]) {
            
            UILabel *tmp  = obj;
            tmp.textColor = [UIColor purpleColor];
        }
        
        if ([obj isKindOfClass:[UIButton class]]) {
            
            UIButton *button = obj;
            button.hidden    = YES;
        }
    }];
    
    UIButton *button       = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, self.screenWidth - 100 , 44)];
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:button];
}

- (void)buttonClick:(UIButton *)button {
    
    ViewControllerOneNext *oneNext   = [[ViewControllerOneNext alloc] init];
    oneNext.title                    = @"oneNext";
    oneNext.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:oneNext animated:YES];
}

/**
 *  view已经显示
 *
 *  @param animated
 */
- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    [self enablePopGesture:NO];
}

/**
 *  view已经消失
 *
 *  @param animated
 */
- (void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    [self enablePopGesture:YES];
}


@end
