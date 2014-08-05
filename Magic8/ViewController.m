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

@implementation ViewController;

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

   int num = arc4random_uniform(8);
//Generates random number to determine your fate. Because your future is a matter of change
    
    
switch(num) {
    //Displays fortune in label
    
    case 0: {
    self.showMeTheMoney.text = @"no";
        break;
    }
    case 1:{
    self.showMeTheMoney.text = @"NO";
        break;
    }
    case 2:{
    self.showMeTheMoney.text = @"Really, chucklefuck?";
        break;
    }
    case 3:{
    self.showMeTheMoney.text = @"You can't handle the truth";
        break;
    }
    case 4:{
    self.showMeTheMoney.text = @"How should I know?";
        break;
    }
    case 5:{
    self.showMeTheMoney.text = @"Good luck with THAT";
        break;
    }
    case 6:{
    self.showMeTheMoney.text = @"Quit while you're behind";
        break;
    }
    case 7:{
    self.showMeTheMoney.text = @"You're living on borrowed time";
        break;
    }
    default:{
    self.showMeTheMoney.text = @"I'm out";
        break;
    }
    }
}

@end;
