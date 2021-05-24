#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)n {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    if (0<n && n<=12) return dateFormatter.monthSymbols[n - 1];
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)st {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    NSDate *date = [dateFormatter dateFromString:st];
    NSDateComponents *comp = [NSCalendar.currentCalendar components:NSCalendarUnitDay fromDate:date];
    return comp.day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end
