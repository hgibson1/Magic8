//
//  ViewController.h
//  Magic8
//
//  Created by Hannah Gibson on 8/1/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
// 

#import <UIKit/UIKit.h>

@class Magic8;
@class MagicAnimation;
@interface ViewController :UIViewController


@property(strong, nonatomic) IBOutlet UIImageView *animation;
//Defines Image view controler as outlet for animation
@property(strong, nonatomic) MagicAnimation *magicAnimation;
@property (weak, nonatomic) IBOutlet UITextView*showMeTheMoney;
//Declares label which will display fortune
@property (strong, nonatomic) Magic8 *magic8;
//Declares varible of magic8 custom class

-(void)makeprediction; //Declares make prediction method
-(void)clearwindow; //Declares clearwindow method


@end
