//
//  ViewController.m
//  Magic8
//
//  Created by Hannah Gibson on 8/1/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize showMeTheMoney;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)giveItToMe {

int num = arc4random_uniform(7);

switch (num) {
case 0:
    self.showMeTheMoney.text = @"no";
case 1:
    self.showMeTheMoney.text = @"NO";
case 2:
    self.showMeTheMoney.text = @"Really, chucklefuck?";
case 3:
    self.showMeTheMoney.text = @"You can't handle the truth";
case 4:
    self.showMeTheMoney.text = @"How should I know?";
case 5:
    self.showMeTheMoney.text = @"Well, good luck with that";
case 6:
    self.showMeTheMoney.text = @"Quit while you're behind";
case 7:
    self.showMeTheMoney.text = @"You're living on borrowed time";
default:
    self.showMeTheMoney.text = @"I'm out";
break;
    }
}
@end;
