//
//  main.c
//  SpaceCount
//
//  Created by Adrian Istrate on 06/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>

int spaceCount(const char *s)
{
    int count = 0;
    
    for (int i = 0; s[i] != 0; i++) {
        if (s[i] == ' ') {
            count++;
        }
    }
    
    return count;
}

int main(int argc, const char * argv[])
{
    
    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    
    return 0;
}

