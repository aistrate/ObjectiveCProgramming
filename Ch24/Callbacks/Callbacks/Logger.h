//
//  Logger.h
//  Callbacks
//
//  Created by Adrian Istrate on 03/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject <NSURLConnectionDataDelegate>
{
    NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;

- (void)zoneChange:(NSNotification *)note;

@end
