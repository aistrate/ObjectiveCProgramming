//
//  main.m
//  SecondsAlive
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1972];
        [comps setMonth:8];
        [comps setDay:13];
        [comps setHour:6];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        
        double secondsAlive = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"You were born on %@.", dateOfBirth);
        NSLog(@"You have been alive %.0f seconds.", secondsAlive);
        
    }
    return 0;
}

