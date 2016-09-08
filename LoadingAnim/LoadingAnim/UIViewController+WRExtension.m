//
//  UIViewController+WRExtension.m
//  LoadingAnim
//
//  Created by wangrui on 16/9/8.
//  Copyright © 2016年 tools. All rights reserved.
//

#import "UIViewController+WRExtension.h"
#import "UIImageView+WRExtension.h"
#import "Masonry.h"
#import <objc/runtime.h>


@interface UIViewController ()

@property (nonatomic,strong) UIImageView *gifView;

@end

static const void *GifKey = &GifKey;

@implementation UIViewController (WRExtension)

-(UIImageView *)gifView{
    return objc_getAssociatedObject(self, GifKey);
}

-(void)setGifView:(UIImageView *)gifView{
    objc_setAssociatedObject(self, GifKey, gifView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)showGifLoading{
    [self showGifLoading:nil inView:nil];
}

-(void)showGifLoading:(NSArray *)images inView:(UIView *)view{
    if (!images.count) {
        images = @[[UIImage imageNamed:@"hold1_60x72"],[UIImage imageNamed:@"hold2_60x72"],[UIImage imageNamed:@"hold3_60x72"]];
    }
    UIImageView *gifView = [[UIImageView alloc] init];
    if (!view) {
        view = self.view;
    }
    [view addSubview:gifView];
    [gifView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(@0);
        make.width.equalTo(@60);
        make.width.equalTo(@70);
    }];
    self.gifView = gifView;
    [gifView playGifAnim:images];
}

-(void)hideGifLoading{
    [self.gifView stopGifAnim];
    self.gifView = nil;
}

@end
