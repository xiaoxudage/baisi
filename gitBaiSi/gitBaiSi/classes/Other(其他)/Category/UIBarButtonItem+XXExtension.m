//
//  UIBarButtonItem+XXExtension.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "UIBarButtonItem+XXExtension.h"

@implementation UIBarButtonItem (XXExtension)


+ (instancetype)itemWithNormalImage:(NSString *)normalIMage selecImage:(NSString *)selecImage contentEdgeInsets:(UIEdgeInsets)contentEdgeInsets target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalIMage] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selecImage] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.contentEdgeInsets = contentEdgeInsets;
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}
@end
