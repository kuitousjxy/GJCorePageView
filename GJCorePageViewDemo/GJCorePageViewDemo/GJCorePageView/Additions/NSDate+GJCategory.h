//
//  NSDate+GJCategory.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (GJCategory) 

/**
 *  获取日期
 */
- (NSUInteger)getDay;

/**
 *  获取月份
 */
- (NSUInteger)getMonth;

/**
 *  获取年份
 */
- (NSUInteger)getYear;

/**
 *  获取小时
 */
- (NSUInteger)getHour;

/**
 *  获取分钟
 */
- (NSUInteger)getMinute;

/**
 *  字符串转化日期
 *
 *  @param dateStr 格式化字符串 yyyy-MM-dd HH:mm:ss
 *
 *  @return 日期
 */
+ (NSDate *)dateFromString:(NSString *)dateStr;

@end
