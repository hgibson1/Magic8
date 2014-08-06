//
//  Magic8.m
//  Magic8
//
//  Created by Hannah Gibson on 8/5/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import "Magic8.h"
#include <stdlib.h>

@implementation Magic8

-(NSArray *) predictions {
    if (_predictions == nil){
    _predictions = [[NSArray alloc]initWithObjects: @"NO", @"Quit While You're Behind", @"It's not going to happen", @"We're all just dust in the wind", @"Good luck with THAT", @"Really, Chucklefuck?", @"How should I know?", @"Die in a hole", @"You can't handle the truth", nil];
        }
    //allocates and initializes predictions array if it doesn't exist, then returns predictions array
    return _predictions;
}

-(NSString *)randomPrediction{
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex: random];
    //implementation for randomPrediction method. Generates a random number, and indexes into predicitons array
}
@end
