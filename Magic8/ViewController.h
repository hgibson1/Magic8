//
//  ViewController.h
//  Magic8
//
//  Created by Hannah Gibson on 8/1/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
// 

#import <UIKit/UIKit.h>
#include <stdlib.h>
@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextView*showMeTheMoney;
//Declares label which will display fortune



- (IBAction)giveItToMe;
//Declares button as IBAction. his IBAction is a touchUpInside event. That's the actual name. You can't make this shit up.


@end
