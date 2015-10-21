//
//  XXTabBarController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXTabBarController.h"
#import "XXTabBar.h"
#import "XXNavigationController.h"
#import "XXEssenceController.h"
#import "XXNewController.h"
#import "XXMeController.h"
#import "XXFriendTrendsController.h"

@interface XXTabBarController ()

@end

@implementation XXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置tabBarItem文字的属性
    [self setUpTextAttri];
    [self setValue:[[XXTabBar alloc] init] forKey:@"tabBar"];
    [self addChildViewControllers];
}


// 设置文字的属性
- (void)setUpTextAttri
{
    UITabBarItem *item = [UITabBarItem appearance];
    NSDictionary *normalAttri = @{
                                  NSFontAttributeName : [UIFont systemFontOfSize:12],
                                  NSForegroundColorAttributeName : [UIColor grayColor]
                                  };
    [item setTitleTextAttributes:normalAttri forState:UIControlStateNormal];
    NSDictionary *selecAttri = @{
                                  
                                  NSForegroundColorAttributeName : [UIColor grayColor]
                                  };
    [item setTitleTextAttributes:selecAttri forState:UIControlStateSelected];
}


- (void)addChildViewControllers
{
    
    [self addChildViewController:[[XXNavigationController alloc] initWithRootViewController:[[XXEssenceController alloc] init]] title:@"精华" image:[UIImage imageNamed:@"tabBar_essence_icon"] selecIMage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    
    [self addChildViewController:[[XXNavigationController alloc] initWithRootViewController:[[XXNewController alloc] init]] title:@"新帖" image:[UIImage imageNamed:@"tabBar_new_icon"] selecIMage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    
    [self addChildViewController:[[XXNavigationController alloc] initWithRootViewController:[[XXFriendTrendsController alloc] init]] title:@"关注" image:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selecIMage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    
    [self addChildViewController:[[XXNavigationController alloc] initWithRootViewController:[[XXMeController alloc] init]] title:@"我" image:[UIImage imageNamed:@"tabBar_me_icon"] selecIMage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
}

- (void)addChildViewController:(UIViewController *)vc title:(NSString *)tilte image:(UIImage *)image selecIMage:(UIImage *)seclecImage
{
    vc.view.backgroundColor = XXRandomColor;
    vc.tabBarItem.title = tilte;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = seclecImage;
    
    [self addChildViewController:vc];
}



@end
