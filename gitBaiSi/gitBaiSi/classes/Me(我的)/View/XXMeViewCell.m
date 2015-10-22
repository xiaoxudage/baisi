//
//  XXMeViewCell.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXMeViewCell.h"

@implementation XXMeViewCell




- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageView.height = self.height * 0.7;
    self.imageView.width = self.imageView.height;
    self.imageView.centerY = self.height * 0.5;
    if (self.imageView.image) {
        self.textLabel.x = self.imageView.x + self.imageView.width + 10;
    }
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.y -= 25;
    XXLog(@"%@",NSStringFromCGRect(frame));
    [super setFrame:frame];
}
@end
