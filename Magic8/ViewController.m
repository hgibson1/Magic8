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
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)giveItToMe {
    self.showMeTheMoney.text = [self.magic8 randomPrediction];
}



@end;
