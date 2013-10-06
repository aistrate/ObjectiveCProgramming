//
//  main.c
//  Time
//
//  Created by Adrian Istrate on 30/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%02d:%02d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    printf("The date is %02d-%02d-%04d\n", now.tm_mday, now.tm_mon + 1, now.tm_year + 1900);
    
    long diff = 4000000;
    long secondsToThen = secondsSince1970 + diff;
    struct tm then;
    localtime_r(&secondsToThen, &then);
    printf("%ld seconds from now, date will be %02d-%02d-%04d\n", diff, then.tm_mday, then.tm_mon + 1, then.tm_year + 1900);
    
    return 0;
}

