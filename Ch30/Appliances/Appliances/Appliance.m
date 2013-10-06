//
//  Appliance.m
//  Appliances
//
//  Created by Adrian Istrate on 05/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

//@synthesize productName, voltage;
@synthesize voltage;

- (id)initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // Set the product name
        //[self setProductName:pn];
        productName = [pn copy];
        
        // Give voltage a starting value
        [self setVoltage:120];
    }
    
    // Return a pointer to the new object
    return self;
}

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    voltage = x;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end
