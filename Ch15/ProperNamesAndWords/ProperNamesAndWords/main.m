//
//  main.m
//  ProperNamesAndWords
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
        NSArray *names = [namesString componentsSeparatedByString:@"\n"];
        
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        int nameIndex = 0;
        NSString *p = [names objectAtIndex:nameIndex];
        NSUInteger nameCount = [names count];
        int count = 0;
        
        for (NSString *w in words) {
            NSComparisonResult r = [w caseInsensitiveCompare:p];
            
            if (r == NSOrderedAscending)
                continue;
            else if (r == NSOrderedDescending) {
                nameIndex++;
                if (nameIndex >= nameCount)
                    break;
                p = [names objectAtIndex:nameIndex];
            }
            else if (![w isEqual:p]) {
                NSLog(@"%@", w);
                count++;
            }
        }
        
        NSLog(@"%d words found.", count);
        
    }
    return 0;
}

