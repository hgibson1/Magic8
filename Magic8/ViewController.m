//
//  ViewController.m
//  Magic8
//
//  Created by Hannah Gibson on 8/1/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import "ViewController.h"
#import "Magic8.h"
#import "MagicAnimation.h"

@interface ViewController ()

@end

@implementation ViewController;

@synthesize showMeTheMoney;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.magic8 = [[Magic8 alloc] init];
    self.magicAnimation = [[MagicAnimation alloc] init];
    self.animation.animationImages = [self.magicAnimation returnAnimation];
    self.animation.animationDuration = 1.0;
    self.animation.animationRepeatCount = 1;
    //initializes magic8 array
}

-(void)viewDidAppear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)clearwindow {
    //clears text field
    self.showMeTheMoney.text = nil; //clears label text
    self.showMeTheMoney.alpha = 0;
    //makes buttion transparent
}

-(void)makeprediction {
    //defines method for making predictions
    //[self.animation startAnimating];
    //starts animation
    self.showMeTheMoney.text = [self.magic8 randomPrediction];
    //makes prediction
    [UIView animateWithDuration:2.0 animations:^{
        self.showMeTheMoney.alpha = 1.0;}];
    //text animation, makes slow fade in
}


- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self clearwindow]; //Clears label when motion initated
    }
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makeprediction]; //displays prediciton when shake motion ends
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self clearwindow]; //Clears label when touch initated
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makeprediction]; //displays prediction when touch ends
}
- (void)viewDidDisappear:(BOOL)animated {
   
}


@end;
