//
//  main.m
//  BlockTest
//
//  Created by Adrian Istrate on 05/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        __block int counter = 0;
        void (^counterBlock)() = ^{ counter++; };
        
        counterBlock();
        counter++;
        counterBlock();
        
        NSLog(@"counter is %d", counter);
        
    }
    return 0;
}

