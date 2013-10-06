//
//  main.m
//  NSStrings
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *lament = @"Why me!?";
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];
        
        NSUInteger charCount = [x length];
        NSLog(@"Length of x is %lu.", charCount);
        NSLog(@"Size of NSUInteger is %lu.", sizeof(NSUInteger));
        
        if (![lament isEqual:x])
            NSLog(@"'%@' and '%@' are NOT equal", lament, x);
        
    }
    return 0;
}

