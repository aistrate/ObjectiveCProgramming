//
//  main.m
//  NSHost
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        
        NSLog(@"Host name is '%@'.", hostName);
        NSLog(@"Host name is '%@'.", [[NSHost currentHost] localizedName]);
        
    }
    return 0;
}

