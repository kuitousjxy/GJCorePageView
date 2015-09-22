//
//  UITextField+GJCategory.m
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "UITextField+GJCategory.h"

@implementation UITextField (GJCategory)

+ (UITextField *)textFieldWithFrame:(CGRect)frame
						borderStyle:(UITextBorderStyle)borderStyle
						  textColor:(UIColor *)textColor
					backgroundColor:(UIColor *)backgroundColor
							   font:(UIFont *)font
					   keyboardType:(UIKeyboardType)keyboardType
					  returnKeyType:(UIReturnKeyType)returnKeyType
                        placeholder:(NSString *)placeholder
								tag:(NSInteger)tag 
                           delegate:(id)delegate
{
	UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    if (textColor)
    {
        textField.textColor = textColor;
    }
	if (backgroundColor)
    {
        textField.backgroundColor = backgroundColor;
    }
    if (font)
    {
        textField.font = font;
    }
    if (placeholder)
    {
        textField.placeholder = placeholder;
    }
    if (tag)
    {
        textField.tag = tag;
    }
    if (delegate)
    {
        textField.delegate = delegate;
    }
    
    textField.borderStyle              = borderStyle;
    textField.keyboardType             = keyboardType;
    textField.returnKeyType            = returnKeyType;
    textField.tag                      = tag;
    textField.clearButtonMode          = UITextFieldViewModeWhileEditing;
    textField.autocorrectionType       = UITextAutocorrectionTypeNo;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
	return textField;
}


@end
