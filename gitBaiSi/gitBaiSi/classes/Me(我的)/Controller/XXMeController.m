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
    
   
   
    
    UIBarButtonItem *item1 =  [UIBarButtonItem itemWithNormalImage:@"mine-moon-icon" selecImage:@"mine-moon-icon-click" contentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -10) target:self action:@selector(moonClick)];
    UIBarButtonItem *item2 =[UIBarButtonItem itemWithNormalImage:@"mine-setting-icon" selecImage:@"mine-setting-icon-click" contentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -10) target:self action:@selector(settingClick)];
  
    
    self.navigationItem.rightBarButtonItems = @[item2 ,item1];
}

- (void)moonClick
{
    XXLogFunc;
}

- (void)settingClick
{
    XXLogFunc;
}
@end
