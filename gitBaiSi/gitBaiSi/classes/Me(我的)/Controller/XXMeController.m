//
//  XXMeController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXMeController.h"

@interface XXMeController ()

@end

@implementation XXMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
}

- (void)setupNav
{
    
    self.navigationItem.title = @"我的";
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    btn1.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0,-5);
    [btn1 sizeToFit];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    btn2.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -10);
    [btn2 sizeToFit];
    
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithCustomView:btn1];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithCustomView:btn2];
  
    
    self.navigationItem.rightBarButtonItems = @[item2 ,item1];
}

@end
