//
//  UILabel+GJCategory.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (GJCategory) 

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment
                       font:(UIFont *)font
                        tag:(NSInteger)tag
                  hasShadow:(BOOL)hasShadow;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                  textColor:(UIColor *)textColor
                       font:(UIFont *)font;

@end
