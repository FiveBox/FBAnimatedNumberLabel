//
//  SampleAppViewController.h
//  FBAnimatedNumberLabel
//
//  Created by Matthew Ohlman on 2/7/15.
//  Copyright (c) 2015 FiveBox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBAnimatedNumberLabel.h"

@interface SampleAppViewController : UIViewController

@property (strong, nonatomic) IBOutlet FBAnimatedNumberLabel *label;
@property (strong, nonatomic) IBOutlet UITextField *tickSpeedTextField;
@property (strong, nonatomic) IBOutlet UITextField *pulseSpeedTextField;
@property (strong, nonatomic) IBOutlet UITextField *pulsePercentageTextField;
@property (strong, nonatomic) IBOutlet UITextField *inceaseByTextField;

-(IBAction)animate:(id)sender;
-(IBAction)reset:(id)sender;

@end
