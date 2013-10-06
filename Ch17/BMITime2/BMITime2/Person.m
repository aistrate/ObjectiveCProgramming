//
//  Person.m
//  BMITime2
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
//    float h = [self heightInMeters];
//    return [self weightInKilos] / (h * h);
    float h = self.heightInMeters;
    return self.weightInKilos / (h * h);
}

@end
