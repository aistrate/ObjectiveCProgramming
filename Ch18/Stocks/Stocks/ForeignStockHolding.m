//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return [super costInDollars] * [self conversionRate];
}

- (float)valueInDollars
{
    return [super valueInDollars] * [self conversionRate];
}

@end
