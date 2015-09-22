//
//  NSDate+GJCategory.m
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "NSDate+GJCategory.h"

@implementation NSDate(GJCategory)

- (NSUInteger)getDay
{
	NSCalendar * calendar = [NSCalendar currentCalendar];
	NSDateComponents * dayComponents = [calendar components:(NSCalendarUnitDay) fromDate:self];
	return [dayComponents day];
}

- (NSUInteger)getMonth
{
	NSCalendar * calendar = [NSCalendar currentCalendar];
	NSDateComponents * dayComponents = [calendar components:(NSCalendarUnitMonth) fromDate:self];
	return [dayComponents month];
}

- (NSUInteger)getYear
{
	NSCalendar * calendar = [NSCalendar currentCalendar];
	NSDateComponents * dayComponents = [calendar components:(NSCalendarUnitYear) fromDate:self];
	return [dayComponents year];
}

- (NSUInteger)getHour
{
	NSCalendar * calendar = [NSCalendar currentCalendar];
	NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute;
	NSDateComponents * components = [calendar components:unitFlags fromDate:self];
	NSInteger hour = [components hour];
	return hour;
}

- (NSUInteger)getMinute
{
	NSCalendar * calendar = [NSCalendar currentCalendar];
	NSUInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit;
	NSDateComponents * components = [calendar components:unitFlags fromDate:self];
	NSInteger minute = [components minute];
	return minute;
}

+ (NSDate *)dateFromString:(NSString *)dateStr
{
	NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate * desDate = [formatter dateFromString:dateStr];
	return desDate;
}

@end
