//
//  MagicAnimation.h
//  Magic8
//
//  Created by Hannah Gibson on 8/18/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicAnimation : NSObject {
    NSArray *_animations;
}

@property(nonatomic, strong, readonly) NSArray *animations;
//Defines image array property

-(NSArray *)returnAnimation;

@end
