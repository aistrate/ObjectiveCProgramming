//
//  main.m
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        StockHolding *stockHolding = [StockHolding new];
        stockHolding.purchaseSharePrice = 2.30;
        stockHolding.currentSharePrice = 4.50;
        stockHolding.numberOfShares = 40;
        [array addObject:stockHolding];
        
        stockHolding = [StockHolding new];
        stockHolding.purchaseSharePrice = 12.19;
        stockHolding.currentSharePrice = 10.56;
        stockHolding.numberOfShares = 90;
        [array addObject:stockHolding];
        
//        ForeignStockHolding *foreignStockHolding = [ForeignStockHolding new];
//        foreignStockHolding.purchaseSharePrice = 45.10;
//        foreignStockHolding.currentSharePrice = 49.51;
//        foreignStockHolding.numberOfShares = 210;
//        foreignStockHolding.conversionRate = 0.94;
//        [array addObject:foreignStockHolding];
        
        stockHolding = [ForeignStockHolding new];
        stockHolding.purchaseSharePrice = 45.10;
        stockHolding.currentSharePrice = 49.51;
        stockHolding.numberOfShares = 210;
        ((ForeignStockHolding *)stockHolding).conversionRate = 0.94;
        [array addObject:stockHolding];
        
        for (StockHolding *s in array) {
            NSLog(@"Stock cost was $%.2f, value now is $%.2f.", [s costInDollars], [s valueInDollars]);
        }
        
    }
    return 0;
}

