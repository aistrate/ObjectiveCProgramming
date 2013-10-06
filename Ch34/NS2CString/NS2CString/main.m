//
//  main.m
//  NS2CString
//
//  Created by Adrian Istrate on 06/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char *cGreeting = "Hello from C!";
        NSString *nsResult = [NSString stringWithCString:cGreeting encoding:NSUTF8StringEncoding];
        NSLog(@"%@", nsResult);
        
        NSString *nsGreeting = @"Hello from Objective-C!";
        const char *cResult = NULL;
        if ([nsGreeting canBeConvertedToEncoding:NSUTF8StringEncoding]) {
            cResult = [nsGreeting cStringUsingEncoding:NSUTF8StringEncoding];
            printf("%s\n", cResult);
        }
        
    }
    return 0;
}

