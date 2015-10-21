//
//  XXLoginController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXLoginController.h"

@interface XXLoginController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;

@end

@implementation XXLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (IBAction)loginButtonClick:(UIButton *)sender {
    sender.selected = !sender.selected;
    // 如果是选中状态就做动画
    if (sender.selected) {
        self.leftConstraint.constant = - [UIScreen mainScreen].bounds.size.width;
        [UIView animateWithDuration:.25 animations:^{
            [self.view layoutIfNeeded];
        }];
        
    }else
    {
        self.leftConstraint.constant = 0;
        [UIView animateWithDuration:.25 animations:^{
            [self.view layoutIfNeeded];
        }];
    }
    
}

@end
