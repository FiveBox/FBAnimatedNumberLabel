//
//  FBAnimatedNumberLabel.h
//  FBAnimatedNumberLabel
//
//  Created by Matthew Ohlman on 2/7/15.
//  Copyright (c) 2015 FiveBox. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for FBAnimatedNumberLabel.
FOUNDATION_EXPORT double FBAnimatedNumberLabelVersionNumber;

//! Project version string for FBAnimatedNumberLabel.
FOUNDATION_EXPORT const unsigned char FBAnimatedNumberLabelVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <FBAnimatedNumberLabel/PublicHeader.h>


@interface FBAnimatedNumberLabel : UILabel

// The % (positive for increase, or negative for decrease) that the label should grow by when pulsing.
@property IBInspectable CGFloat pulsePercentage;

// The speed in seconds that the pulse animation should take.
@property IBInspectable CGFloat pulseSpeed;

// The speed in seconds between each tick of the label.
@property IBInspectable CGFloat tickSpeed;

// The current number value of the label. Set this value to trigger animations.
@property IBInspectable int currentValue;

-(instancetype)initWithFrame:(CGRect)frame;

// Sets the current value in the label, and allows you to specify if animation should occur.
// NOTE: To set the current value and animate, you can simply do: label.currentValue = VALUE;
-(void)setCurrentValue:(int)newValue withAnimation:(BOOL)animation;

@end

