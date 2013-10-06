//
//  main.c
//  HeapBMI
//
//  Created by Adrian Istrate on 30/09/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[])
{
    // Allocate memory for one Person structure
    Person *x = (Person *)malloc(sizeof(Person));
    
    // Fill in two members of the structure
    x->weightInKilos = 81;
    x->heightInMeters = 2.0;
    
    // Print out the BMI of the original Person
    float xBMI = bodyMassIndex(x);
    printf("x has a BMI of = %f\n", xBMI);
    
    // Let the memory be recycled
    free(x);
    
    // Forget where it was
    x = NULL;
    
    return 0;
}

