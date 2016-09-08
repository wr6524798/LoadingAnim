//
//  UIImageView+WRExtension.h
//  ykzb
//
//  Created by wangrui on 16/9/3.
//  Copyright © 2016年 tools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WRExtension)

// 播放图片数组
-(void)playGifAnim:(NSArray *)images;

// 停止播放
-(void)stopGifAnim;

@end
