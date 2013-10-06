//
//  main.m
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Portfolio *portfolio = [Portfolio new];
        
        StockHolding *stockHolding = [StockHolding new];
        stockHolding.purchaseSharePrice = 2.30;
        stockHolding.currentSharePrice = 4.50;
        stockHolding.numberOfShares = 40;
        [portfolio addStockObject:stockHolding];
        
        stockHolding = [StockHolding new];
        stockHolding.purchaseSharePrice = 12.19;
        stockHolding.currentSharePrice = 10.56;
        stockHolding.numberOfShares = 90;
        [portfolio addStockObject:stockHolding];
        
        stockHolding = [ForeignStockHolding new];
        stockHolding.purchaseSharePrice = 45.10;
        stockHolding.currentSharePrice = 49.51;
        stockHolding.numberOfShares = 210;
        ((ForeignStockHolding *)stockHolding).conversionRate = 0.94;
        [portfolio addStockObject:stockHolding];
        
        NSLog(@"Portfolio current value is $%.2f.", [portfolio valueOfStocks]);
        
    }
    return 0;
}

