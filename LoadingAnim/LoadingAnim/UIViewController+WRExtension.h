//
//  UIViewController+WRExtension.h
//  LoadingAnim
//
//  Created by wangrui on 16/9/8.
//  Copyright © 2016年 tools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (WRExtension)

/**
 *  @brief 显示gif加载动画，默认动画和默认视图
 */
-(void)showGifLoading;

/**
 *  @brief 显示gif加载动画
 *
 *  @param images 构成gif的图片数组
 *  @param view   显示的view,不传默认为self.view
 */
-(void)showGifLoading:(NSArray *)images inView:(UIView *)view;

/**
 *  @brief 取消gif动画
 */
-(void)hideGifLoading;

@end
