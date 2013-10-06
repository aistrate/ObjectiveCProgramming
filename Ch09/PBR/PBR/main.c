//
//  main.c
//  PBR
//
//  Created by Adrian Istrate on 30/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void  cartesianToPolar(float x, float y, double *rPtr, double * thetaPtr)
{
    // Is rPtr non-NULL?
    if (rPtr) {
        // Store the radius in the supplied address
        *rPtr = sqrt(x * x + y * y);
    }
    
    // Is thetaPtr NULL?
    if (!thetaPtr) {
        // Skip the rest of the function
        return;
    }
    
    *thetaPtr = atan(y / x);
}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    printf("\n");
    
    double x = 3.0, y = 4.0, radius, angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f, %.2f radians)\n", x, y, radius, angle);
    
    cartesianToPolar(x, y, &radius, NULL);
    printf("radius is %.2f\n", radius);
    
    cartesianToPolar(x, y, NULL, &angle);
    printf("angle is %.2f radians\n", angle);
    
    return 0;
}

