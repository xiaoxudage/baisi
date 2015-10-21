
//
//  XXNewController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXNewController.h"

@interface XXNewController ()

@end

@implementation XXNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupNav];
}

- (void)setupNav
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.titleView = imageView;
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithNormalImage:@"MainTagSubIcon" selecImage:@"MainTagSubIconClick" contentEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0) target:self action:@selector(mainTagSubClick)];
}

- (void)mainTagSubClick
{
    XXLogFunc;
}

@end
