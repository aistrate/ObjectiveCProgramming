//
//  main.c
//  TwoFloats
//
//  Created by Adrian Istrate on 29/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float a = 3.14;
    float b = 42.0;
    
    double c = a + b;
    
    printf("The sum of %f and %f is: %f.\n", a, b, c);
    
    return 0;
}

