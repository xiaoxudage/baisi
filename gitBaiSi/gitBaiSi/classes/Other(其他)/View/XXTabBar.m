//
//  XXTabBar.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXTabBar.h"
#import "XXTabButton.h"
@interface XXTabBar()

@property (nonatomic, weak)XXTabButton *btn;
@end


@implementation XXTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if ([super initWithFrame:frame]) {
        XXTabButton *btn = [[XXTabButton alloc] init];
//        btn.backgroundColor = [UIColor blackColor];
        [self addSubview:btn];
        
        self.btn = btn;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
// 设置button的frame
    CGFloat width = self.frame.size.width;
    self.btn.width = width / 5.0;
    self.btn.height = self.height;
    self.btn.centerX = self.width * 0.5;
    self.btn.centerY = self.height * 0.5;
    
    NSInteger i = 0;
    // 设置tabBar内部button的frame
    for (UIView *view in self.subviews) {
        NSString *string = NSStringFromClass([view class]);
        if ([string isEqualToString:@"UITabBarButton"]) {
            
            CGRect frame = view.frame;
            frame.size.width = width / 5.0;
            frame.origin.x = i * frame.size.width;
            view.frame = frame;
            
            
         if (i > 1) {
             
                CGRect frame = view.frame;
                frame.size.width = width / 5.0;
                frame.origin.x = (i + 1) * frame.size.width;
                view.frame = frame;

            }
            
            
            i++;
            
            
        }
    }
}

@end
