//
//  main.c
//  EveryOtherBit
//
//  Created by Adrian Istrate on 06/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    
    unsigned long a = 0x0;
    unsigned long b = 0x1;
    
    for (int i = 0; i < 64; i+=2) {
        a |= b << i;
    }
    
    printf("Number is %lx\n", a);
    
    return 0;
    
}

