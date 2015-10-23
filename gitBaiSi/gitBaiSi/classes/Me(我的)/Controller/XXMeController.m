//
//  XXMeController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXMeController.h"
#import "XXMeViewCell.h"
#import "XXTableFooterView.h"
@interface XXMeController ()

@end

@implementation XXMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor lightGrayColor];
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 10;
    XXTableFooterView *view = [[XXTableFooterView alloc] init];
    view.backgroundColor = [UIColor redColor];
    
    view.height = 500;
    self.tableView.tableFooterView = view;
    
    [self.tableView registerClass:[XXMeViewCell class] forCellReuseIdentifier:@"me"];
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
#pragma mark - delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XXMeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"me"];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"登录/注册";
        cell.imageView.image = [UIImage imageNamed:@"publish-audio"];
    }else
    {
        cell.textLabel.text = @"离线下载";
    }
    return cell;
}
@end
