//
//  UIButton+GJCategory.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (GJCategory)

+ (UIButton *)buttonWithType:(UIButtonType)type
                       title:(NSString *)title
                   titleFont:(UIFont *)titleFont
                       frame:(CGRect)frame
                       image:(UIImage *)image
             backgroundColor:(UIColor *)bColor
                      target:(id)target
                      action:(SEL)selector
                         tag:(NSInteger)tag;

@end
