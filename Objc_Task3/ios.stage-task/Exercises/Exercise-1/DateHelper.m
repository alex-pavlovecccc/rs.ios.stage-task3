#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    NSArray *values= @[@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November"];
    
    if (monthNumber < 1 || monthNumber > 12) {
        
        return nil;
        
    }
    
    return [values objectAtIndex: monthNumber - 1];
    
}
#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZZZZZ";
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSInteger day = [calendar component:NSCalendarUnitDay fromDate:[dateFormatter dateFromString:date]];
    return day;
    
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter  *dateFormatter   = [[NSDateFormatter alloc] init];
       NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
       [dateFormatter setLocale:locale];
       [dateFormatter setDateFormat:@"EE"];
    
       return [dateFormatter stringFromDate:date];
    
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {

    return  NO;
}

@end
