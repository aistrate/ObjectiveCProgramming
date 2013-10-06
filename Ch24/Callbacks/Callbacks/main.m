//
//  main.m
//  Callbacks
//
//  Created by Adrian Istrate on 03/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc] init];
        
        [[NSNotificationCenter defaultCenter]
                                addObserver:logger
                                   selector:@selector(zoneChange:)
                                       name:NSSystemTimeZoneDidChangeNotification
                                     object:nil];
        
        NSURL *url = [NSURL URLWithString:
                            @"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn
                                    = [[NSURLConnection alloc] initWithRequest:request
                                                                      delegate:logger
                                                              startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(sayOuch:)
                                                                 userInfo:nil
                                                                  repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

