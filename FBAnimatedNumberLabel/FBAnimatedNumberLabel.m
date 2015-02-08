//
//  FBAnimatedNumberLabel.m
//  FBAnimatedNumberLabel
//
//  Created by Matthew Ohlman on 2/7/15.
//  Copyright (c) 2015 FiveBox. All rights reserved.
//

#import "FBAnimatedNumberLabel.h"

@implementation FBAnimatedNumberLabel

@synthesize currentValue = _currentValue;

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setDefaults];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setDefaults];
    }
    
    return self;
}

-(void)setDefaults
{
    self.currentValue = 0;
    self.tickSpeed = 0.0;
    self.pulseSpeed = 0.0;
    self.pulsePercentage = 0.0;
    self.text = [NSString stringWithFormat:@"%d", self.currentValue];
}

-(int)currentValue
{
    return _currentValue;
}

-(void)setCurrentValue:(int)newValue
{
    [self setCurrentValue:newValue withAnimation:YES];
}

-(void)setCurrentValue:(int)newValue withAnimation:(BOOL)animation
{
    if (newValue != _currentValue)
    {
        int oldValue = _currentValue;
        _currentValue = newValue;
        
        if (animation)
        {
            [self animatePulse];
            [self animateValueFrom:oldValue to:newValue];
        }
        else
        {
            self.text = [NSString stringWithFormat:@"%d", _currentValue];
        }
    }
}

-(void)animateValueFrom:(int)oldValue to:(int)newValue
{
    NSTimeInterval interval = self.tickSpeed;
    NSTimeInterval delay = 0.0;
    
    for (int i = oldValue; i <= newValue; i++)
    {
        NSString *labelText = [NSString stringWithFormat:@"%d", i];
        [self performSelector:@selector(setText:) withObject:labelText afterDelay:delay];
        delay += interval;
    }
}

-(void)animatePulse
{
    if (self.pulseSpeed > 0.0 && self.pulsePercentage > 0.0)
    {
        // pulse the label
        [UIView animateWithDuration:self.pulseSpeed / 2.0 animations:^{
            self.transform = CGAffineTransformMakeScale(1.0 + self.pulsePercentage, 1.0 + self.pulsePercentage);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:self.pulseSpeed / 2.0 animations:^{
                self.transform = CGAffineTransformMakeScale(1.0, 1.0);
            }];
        }];
    }
}

@end
