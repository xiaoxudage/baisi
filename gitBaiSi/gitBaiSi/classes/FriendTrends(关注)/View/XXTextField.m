//
//  XXTextField.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/22.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXTextField.h"
#import <objc/runtime.h>
@implementation XXTextField

- (void)awakeFromNib
{
    self.tintColor = [UIColor whiteColor];
    // 获得UItextField的成员变量
//    unsigned int outCount = 0;
//    Ivar *ivar = class_copyIvarList([UITextField class], &outCount);
//    for (int i; i < outCount; i++) {
//        Ivar iv = ivar[i];
//        XXLog(@"%s   %s",ivar_getName(iv), ivar_getTypeEncoding(iv));
//    }
    
}


// 当编辑的时候就会调用该方法
- (BOOL)becomeFirstResponder
{
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    attri[NSForegroundColorAttributeName] = [UIColor whiteColor];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attri];
    
    return [super becomeFirstResponder];
}

// 当结束编辑的时候就会调用该方法
- (BOOL)resignFirstResponder
{
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    attri[NSForegroundColorAttributeName] = [UIColor grayColor];
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attri];
    return [super resignFirstResponder];
}


@end
