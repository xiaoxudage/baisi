//
//  UIBarButtonItem+XXExtension.h
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XXExtension)

+ (instancetype)itemWithNormalImage:(NSString *)normalIMage selecImage:(NSString *)selecImage contentEdgeInsets:(UIEdgeInsets)contentEdgeInsets target:(id)target action:(SEL)action;

@end
