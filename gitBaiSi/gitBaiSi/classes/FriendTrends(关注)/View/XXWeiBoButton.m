//
//  XXWeiBoButton.m
//  gitBaiSi
//
//  Created by xiaoxu on 15/10/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "XXWeiBoButton.h"

@implementation XXWeiBoButton

- (void)awakeFromNib
{
    // 让按钮内部文字居中
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    // 重新设置button内部的子控件
    self.imageView.y = 0;
    self.imageView.height = 70; // 此高度为image本身的高的
    self.imageView.centerX = self.width * 0.5;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.x = 0;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.imageView.height;;
}
@end
