//
//  NSString+GJCategory.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/20.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GJCategory)

- (CGSize)boundingRectWithSize:(CGSize)size
                    attributes:(NSDictionary<NSString *,id> *)attributes
                          font:(UIFont *)font
                 lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
