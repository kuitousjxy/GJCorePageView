//
//  UIButton+GJCategory.m
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "UIButton+GJCategory.h"

@implementation UIButton(GJCategory)

+ (UIButton *)buttonWithType:(UIButtonType)type
					   title:(NSString *)title
                   titleFont:(UIFont *)titleFont
					   frame:(CGRect)frame
                       image:(UIImage *)image
             backgroundColor:(UIColor *)bColor
					  target:(id)target 
					  action:(SEL)selector 
						 tag:(NSInteger)tag
{
	UIButton * button = [UIButton buttonWithType:type];
	button.frame = frame;
	if (title)
    {
		[button setTitle:title forState:UIControlStateNormal];
	}
    if (titleFont)
    {
        button.titleLabel.font = titleFont;
    }
    if (image)
    {
        [button setImage:image forState:UIControlStateNormal];
    }
    if (bColor)
    {
        [button setBackgroundColor:bColor];
    }
    if (target && selector)
    {
        [button addTarget:target
                   action:selector
         forControlEvents:UIControlEventTouchUpInside];
    }
    if (tag)
    {
        button.tag = tag;
    }
	return button;
}

@end