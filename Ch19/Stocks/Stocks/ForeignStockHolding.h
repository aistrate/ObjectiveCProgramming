//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;

@end
