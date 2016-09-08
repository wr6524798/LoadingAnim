//
//  WRShowLoadingVC.m
//  LoadingAnim
//
//  Created by wangrui on 16/9/8.
//  Copyright © 2016年 tools. All rights reserved.
//

#import "WRShowLoadingVC.h"

@interface WRShowLoadingVC ()

@end

@implementation WRShowLoadingVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"图片组成的gif动画展示";
    self.view.backgroundColor = [UIColor whiteColor];
    [self showGifLoading];
    
    // 动画停止
    [self performSelector:@selector(hideGifLoading) withObject:nil afterDelay:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
