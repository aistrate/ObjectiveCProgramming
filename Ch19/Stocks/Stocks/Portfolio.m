//
//  Portfolio.m
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

- (void)addStockObject:(StockHolding *)s
{
    if (!stocks) {
        stocks = [[NSMutableArray alloc] init];
    }
    [stocks addObject:s];
}

- (float)valueOfStocks
{
    float sum = 0;
    for (StockHolding *s in stocks) {
        sum += [s valueInDollars];
    }
    return sum;
}

@end
