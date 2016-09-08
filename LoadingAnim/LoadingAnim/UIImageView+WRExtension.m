//
//  UIImageView+WRExtension.m
//  ykzb
//
//  Created by wangrui on 16/9/3.
//  Copyright © 2016年 tools. All rights reserved.
//

#import "UIImageView+WRExtension.h"

@implementation UIImageView (WRExtension)

-(void)playGifAnim:(NSArray *)images{
    if (!images.count) {
        return;
    }
    
    self.animationImages = images;
    self.animationDuration = 0.5;
    self.animationRepeatCount = 0;
    [self startAnimating];
}

-(void)stopGifAnim{
    if (self.isAnimating) {
        [self stopAnimating];
    }
    [self removeFromSuperview];
}

@end
