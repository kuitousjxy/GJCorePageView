//
//  UITextField+GJCategory.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (GJCategory)

+ (UITextField *)textFieldWithFrame:(CGRect)frame
						borderStyle:(UITextBorderStyle)borderStyle
						  textColor:(UIColor *)textColor
					backgroundColor:(UIColor *)backgroundColor
							   font:(UIFont *)font
					   keyboardType:(UIKeyboardType)keyboardType
					  returnKeyType:(UIReturnKeyType)returnKeyType
                        placeholder:(NSString *)placeholder
								tag:(NSInteger)tag 
                           delegate:(id)delegate;

@end
