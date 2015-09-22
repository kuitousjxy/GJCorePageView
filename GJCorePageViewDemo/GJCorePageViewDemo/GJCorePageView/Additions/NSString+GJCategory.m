//
//  NSString+GJCategory.m
//  GJB4iPhone
//
//  Created by macbook on 15/9/20.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "NSString+GJCategory.h"

@implementation NSString (GJCategory)

- (CGSize)boundingRectWithSize:(CGSize)size
                    attributes:(NSDictionary<NSString *,id> *)attributes
                          font:(UIFont *)font
                 lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    CGSize strSize = CGSizeZero;
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)])
    {
        NSMutableDictionary * attrDict = [NSMutableDictionary dictionary];
        if (GJUtils.validDictionary(attributes))
        {
            [attrDict addEntriesFromDictionary:attributes];
        }
        NSMutableParagraphStyle * style = [[NSMutableParagraphStyle alloc] init];
        style.lineBreakMode = lineBreakMode;
        [attrDict setObject:style forKey:NSParagraphStyleAttributeName];
        [attrDict setObject:font  forKey:NSFontAttributeName];
        strSize = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attrDict
                                     context:nil].size;
    }
    else
    {
        strSize = [self sizeWithFont:font
                   constrainedToSize:size
                       lineBreakMode:lineBreakMode];
    }
    
    return strSize;
}

@end
