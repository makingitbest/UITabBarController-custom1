//
//  NormalTitleViewController.m
//  UITabBarController-custom1
//
//  Created by WangQiao on 16/8/21.
//  Copyright © 2016年 WangQiao. All rights reserved.
//

#import "NormalTitleViewController.h"
#import "UIView+SetRect.h"
#import "UIFont+Fonts.h"

@interface NormalTitleViewController ()

@property (nonatomic, strong) UILabel  *titleLabel;
@property (nonatomic, strong) UIButton *backButton;

@end

@implementation NormalTitleViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 先写 label,并居中,防止字数显示不全
    self.titleLabel               = [[UILabel alloc] initWithFrame:CGRectMake(50, self.statusBarHeight, Width - 100, self.navigationBarHeight)];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font          = [UIFont HeitiSCWithFontSize:17];
    self.titleLabel.textColor     = [UIColor blackColor];
    self.titleLabel.text          = self.title; //这里一定要给text传值.
    [self.titleView addSubview:self.titleLabel];
    
    // 返回按钮,它的点击事件是调用了父类的一个方法
    self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, self.statusBarHeight, 50, self.navigationBarHeight)];
    [self.backButton setImage:[UIImage imageNamed:@"back_b"] forState:UIControlStateNormal];
    [self.backButton addTarget:self action:@selector(popViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.titleView addSubview:self.backButton];
    
    // 加个线条
    UIView *lineView         = [[UIView alloc] initWithFrame:CGRectMake(0, self.statusBarHeight + self.navigationBarHeight - 0.5, self.screenWidth, 0.5)];
    lineView.backgroundColor = [UIColor grayColor];
    [self.titleView addSubview:lineView];
}

/**
 *  重写title的setter方法
 *
 *  @param title title
 */
- (void)setTitle:(NSString *)title {
    
    [super setTitle:title];
    
    self.titleLabel.text = title;
}

@end
