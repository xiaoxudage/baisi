//
//  XXTableFooterViewController.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/23.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXTableFooterView.h"
#import <AFNetworking.h>


@implementation XXTableFooterView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

/**
 *  发送请求
 *
 */

- (void)sendRequest
{
    
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.y -= 25;
    [super setFrame:frame];
}
@end
