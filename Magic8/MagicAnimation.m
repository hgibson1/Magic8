//
//  MagicAnimation.m
//  Magic8
//
//  Created by Hannah Gibson on 8/18/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import "MagicAnimation.h"

@implementation MagicAnimation 

-(NSArray *)returnAnimation {
    if (_animations == nil) {
       _animations = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"Background"], nil];
    }
        //Assigns images to array if array isn't filled and returns image array
    return _animations;
}

@end
