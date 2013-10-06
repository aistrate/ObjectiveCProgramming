//
//  main.c
//  Addresses
//
//  Created by Adrian Istrate on 30/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    printf("i stores its value at %p\n", &i);
    printf("this function starts at %p\n", main);
    printf("\n");
    
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    printf("\n");
    
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("\n");
    
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A long is %zu bytes\n", sizeof(long));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    printf("\n");
    
    printf("An int is %zu bytes\n", sizeof(i));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    printf("\n");
    
    printf("A float is %zu bytes\n", sizeof(float));
    printf("A double is %zu bytes\n", sizeof(double));
    printf("A unsigned short is %zu bytes\n", sizeof(unsigned short));
    printf("\n");
    
    return 0;
}

