//
//  main.m
//  Constants
//
//  Created by Adrian Istrate on 02/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Blender.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // In literal NSString, use \u for arbitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:@"currency"];
        NSLog(@"Money is %@", currency);
        
        NSLog(@"Locale identifier is %@", [here localeIdentifier]);
        NSLog(@"Language code is %@", [here objectForKey:NSLocaleLanguageCode]);
        NSLog(@"Country code is %@", [here objectForKey:NSLocaleCountryCode]);
        NSLog(@"Currency code is %@", [here objectForKey:NSLocaleCurrencyCode]);
        NSLog(@"Currency symbol is %@", [here objectForKey:NSLocaleCurrencySymbol]);
        
        Blender *b = [Blender new];
        [b setSpeed:BlenderSpeedLiquify];
        NSLog(@"Blender speed is %d", [b speed]);
        
    }
    return 0;
}

