//
//  main.c
//  Triangle
//
//  Created by Adrian Istrate on 30/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a, float b)
{
    return 180.0 - a - b;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
}

