//
//  main.m
//  ProperNamesAndWords2
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
        
        NSUInteger nameCount = [names count];
        NSUInteger wordCount = [words count];
        int matchCount = 0;
        
        for (int nameIndex = 0, wordIndex = 0; (nameIndex < nameCount) && (wordIndex < wordCount); ) {
            NSString *n = [names objectAtIndex:nameIndex];
            NSString *w = [words objectAtIndex:wordIndex];
            
            NSComparisonResult r = [n caseInsensitiveCompare:w];
            
            if (r == NSOrderedAscending)
                nameIndex++;
            else if (r == NSOrderedDescending)
                wordIndex++;
            else {
                wordIndex++;
                if (![n isEqual:w]) {
                    NSLog(@"%@", w);
                    matchCount++;
                }
            }
        }
        
        NSLog(@"%d matches found.", matchCount);
        
    }
    return 0;
}

