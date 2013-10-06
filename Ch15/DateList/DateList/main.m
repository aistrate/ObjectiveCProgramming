//
//  main.m
//  DateList
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        // How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        printf("\n");
        
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is date %d: %@", i, d);
        }
        printf("\n");
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        printf("\n");
        
        // Create an empty array
        NSMutableArray *dateList2 = [NSMutableArray array];
        
        // Add the dates to the array
        [dateList2 addObject:now];
        [dateList2 addObject:tomorrow];
        [dateList2 insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList2) {
            NSLog(@"Here is a date: %@", d);
        }
        printf("\n");
        
        // Remove yesterday
        [dateList2 removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList2 objectAtIndex:0]);
        
        // Polymorphism
        NSArray *dateList3 = [NSMutableArray array];
        
    }
    return 0;
}

