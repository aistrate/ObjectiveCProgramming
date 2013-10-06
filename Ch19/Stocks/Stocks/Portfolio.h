//
//  Portfolio.h
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stocks;
}

- (void)addStockObject:(StockHolding *)s;
- (float)valueOfStocks;

@end
