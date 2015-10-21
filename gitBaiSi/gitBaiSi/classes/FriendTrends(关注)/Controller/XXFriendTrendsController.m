//
//  XXFriendTrendsController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXFriendTrendsController.h"
#import "XXTestController.h"
@interface XXFriendTrendsController ()

@end

@implementation XXFriendTrendsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
}

- (void)setupNav
{
    
    self.navigationItem.title = @"我的关注";
    
    
   
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithNormalImage:@"friendsRecommentIcon" selecImage:@"friendsRecommentIcon-click" contentEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0) target:self action:@selector(friendsRecommentClick)];
    
   
}


- (void)friendsRecommentClick
{
    XXTestController *test = [[XXTestController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}
@end
