//
//  Blender.h
//  Constants
//
//  Created by Adrian Istrate on 03/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
} BlenderSpeed;

@interface Blender : NSObject
{
    // speed must be one of the five speeds
    BlenderSpeed speed;
}

- (BlenderSpeed)speed;

// setSpeed: expects one of the five speeds
- (void)setSpeed:(BlenderSpeed)x;

@end
