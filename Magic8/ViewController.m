//
//  ViewController.m
//  Magic8
//
//  Created by Hannah Gibson on 8/1/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import "ViewController.h"
#import "Magic8.h"

@interface ViewController ()

@end

@implementation ViewController;

@synthesize showMeTheMoney;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.magic8 = [[Magic8 alloc] init];
    //initializes magic8 array
}

-(void)viewDidAppear:(BOOL)animated{
    self.showMeTheMoney.text = @"8";
    //Displays inital text in label as 8 for magic 8 ball
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)giveItToMe {
//    self.showMeTheMoney.text = [self.magic8 randomPrediction]; //generates a prediction if button is pressed
//}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.showMeTheMoney.text = nil; //clears label when shake motion is initiated
    }
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.showMeTheMoney.text = [self.magic8 randomPrediction]; //displays prediciton when shake motion ends
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.showMeTheMoney.text = nil; //clears label if touch is initiated
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.showMeTheMoney.text = [self.magic8 randomPrediction]; //displays prediction when touch ends
}
- (void)viewDidDisappear:(BOOL)animated {
   
}


@end;
