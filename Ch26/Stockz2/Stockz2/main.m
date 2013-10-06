//
//  main.m
//  Stockz2
//
//  Created by Adrian Istrate on 03/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stock setObject:[NSDate dateWithString:@"2011-08-01 12:00:00 +0100"]
                  forKey:@"purchaseDate"];
        [stock setObject:[NSNumber numberWithFloat:15.22]
                  forKey:@"purchasePrice"];
        [stock setObject:[NSNumber numberWithBool:YES]
                  forKey:@"isLongTerm"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stock setObject:[NSDate dateWithString:@"2013-10-01 10:00:00 +0100"]
                  forKey:@"purchaseDate"];
        [stock setObject:[NSNumber numberWithFloat:7.3]
                  forKey:@"purchasePrice"];
        [stock setObject:[NSNumber numberWithBool:NO]
                  forKey:@"isLongTerm"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks2.plist"
                 atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks2.plist"];
        
        NSLog(@"Property List:\n%@", stockList);
        
    }
    return 0;
}

