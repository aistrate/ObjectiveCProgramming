//
//  main.m
//  DaylightSavingsTime
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL isDST = [timeZone isDaylightSavingTime];
        NSLog(@"Daylight Savings Time status: %@.", isDST ? @"ON" : @"OFF");
        
    }
    return 0;
}

