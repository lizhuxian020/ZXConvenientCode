//
//  UIView+ZXSugar.m
//  ZXTopViewMagnify
//
//  Created by lzx on 17/3/21.
//  Copyright © 2017年 lzx. All rights reserved.
//

#import "UIView+ZXSugar.h"

@implementation UIView (ZXSugar)

- (CGPoint)zx_origin{
    return self.frame.origin;
}

- (void)setZx_origin:(CGPoint)zx_origin{
    CGRect frame = self.frame;
    frame.origin = zx_origin;
    self.frame = frame;
}

- (CGSize)zx_size{
    return self.frame.size;
}

- (void)setZx_size:(CGSize)zx_size{
    CGRect frame = self.frame;
    frame.size = zx_size;
    self.frame = frame;
}

- (CGFloat)zx_x{
    return self.frame.origin.x;
}

- (void)setZx_x:(CGFloat)zx_x{
    CGRect frame = self.frame;
    frame.origin.x = zx_x;
    self.frame = frame;
}

- (CGFloat)zx_y{
    return self.frame.origin.y;
}

- (void)setZx_y:(CGFloat)zx_y{
    CGRect frame = self.frame;
    frame.origin.y = zx_y;
    self.frame = frame;
}

- (CGFloat)zx_width{
    return self.frame.size.width;
}

- (void)setZx_width:(CGFloat)zx_width{
    CGRect frame = self.frame;
    frame.size.width = zx_width;
    self.frame = frame;
}

- (CGFloat)zx_height{
    return self.frame.size.height;
}

- (void)setZx_height:(CGFloat)zx_height{
    CGRect frame = self.frame;
    frame.size.height = zx_height;
    self.frame = frame;
}

@end
