//
//  main.c
//  yostring
//
//  Created by Adrian Istrate on 06/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // For malloc/free
#include <string.h> // For strlen

int main(int argc, const char * argv[])
{
    
    char x = '!'; // 0x21 // The character '!'
    
    while (x <= '~') { // 0x7e // The character '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    
    // Get a pointer to 5 bytes of memory on the heap
    char *start = malloc(5);
    
//    // Put 'L' in the first byte
//    *start = 'L';
//    
//    // Put 'o' in the second byte
//    *(start + 1) = 'o';
//    
//    // Put 'v' in the third byte
//    *(start + 2) = 'v';
//    
//    // Put 'e' in the fourth byte
//    *(start + 3) = 'e';
//    
//    // Put zero in the fifth byte
//    *(start + 4) = '\0';
    
    start[0] = 'L';
    start[1] = 'o';
    start[2] = 'v';
    start[3] = 'e';
    start[4] = '\0';
    
    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", *(start + 2));
    
    // Free the memory so that it can be reused
    free(start);
    start = NULL;
    
    
    const char *start2 = "Love";
    //start2[2] = 'z';
    printf("%s has %zu characters\n", start2, strlen(start2));
    
    
    const char *start3 = "A backslash after two newlines and a tab:\n\n\t\\";
    printf("%s has %zu characters\n", start3, strlen(start3));
    printf("The third letter is \'%c\'\n", start3[2]);
    
    
    return 0;
}

