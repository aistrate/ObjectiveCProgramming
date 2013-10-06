//
//  main.m
//  ProperNamesAndWords3
//
//  Created by Adrian Istrate on 01/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *namesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        
        NSArray *names = [namesString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        int matchCount = 0;
        
        for (NSString *w in words) {
            for (NSString *n in names) {
                if (([w caseInsensitiveCompare:n] == NSOrderedSame) &&
                    (![w isEqual:n])) {
                    
                    NSLog(@"%@", w);
                    matchCount++;
                    
                }
            }
        }
        
        NSLog(@"%d matches found.", matchCount);
        
    }
    return 0;
}

