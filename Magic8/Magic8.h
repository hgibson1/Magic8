//
//  Magic8.h
//  Magic8
//
//  Created by Hannah Gibson on 8/5/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
// Interface for Magic8 class which holds possble predictions

#import <Foundation/Foundation.h>

@interface Magic8 : NSObject

@property(strong, nonatomic, readonly) NSArray *predictions; //defines predictions array

-(NSArray *) predictions; //defines method for filling predictions aray

-(NSString *)randomPrediction; //defines random predicitons method


@end
