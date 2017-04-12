//
//  UIView+ZXSugar.h
//  ZXTopViewMagnify
//
//  Created by lzx on 17/3/21.
//  Copyright © 2017年 lzx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZXSugar)

@property(nonatomic, assign)CGPoint zx_origin;  //坐标
@property(nonatomic, assign)CGSize  zx_size;    //大小
@property(nonatomic, assign)CGFloat zx_x;       //x
@property(nonatomic, assign)CGFloat zx_y;       //y
@property(nonatomic, assign)CGFloat zx_width;   //宽度
@property(nonatomic, assign)CGFloat zx_height;  //高度

@end
