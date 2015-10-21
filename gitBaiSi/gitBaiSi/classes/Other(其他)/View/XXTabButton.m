//
//  XXTabButton.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/20.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXTabButton.h"

@implementation XXTabButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if ([super initWithFrame:frame]) {
        [self setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        self.adjustsImageWhenHighlighted = NO;
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.y += 2;

}
@end
