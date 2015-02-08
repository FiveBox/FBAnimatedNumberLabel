//
//  SampleAppViewController.m
//  FBAnimatedNumberLabel
//
//  Created by Matthew Ohlman on 2/7/15.
//  Copyright (c) 2015 FiveBox. All rights reserved.
//

#import "SampleAppViewController.h"

@interface SampleAppViewController ()

@end

@implementation SampleAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self reset:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)animate:(id)sender
{
    self.label.tickSpeed = [self.tickSpeedTextField.text floatValue];
    self.label.pulseSpeed = [self.pulseSpeedTextField.text floatValue];
    self.label.pulsePercentage = [self.pulsePercentageTextField.text floatValue];
    
    self.label.currentValue += [self.inceaseByTextField.text intValue];
}

-(IBAction)reset:(id)sender
{
    self.tickSpeedTextField.text = [NSString stringWithFormat:@"0.05"];
    self.pulseSpeedTextField.text = [NSString stringWithFormat:@"1.0"];
    self.pulsePercentageTextField.text = [NSString stringWithFormat:@"0.5"];
    self.inceaseByTextField.text = [NSString stringWithFormat:@"20"];
    [self.label setCurrentValue:0 withAnimation:NO];
}

@end
