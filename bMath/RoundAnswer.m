//
//  RoundAnswer.m
//  bMath
//
//  Created by Massimiliano Redolfi on 27/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "RoundAnswer.h"


@implementation RoundAnswer

-(void)newChoiceWithAnswer:(int)answer
{
    int c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    
    while (answer==c2) {
        c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    }
    
    if(RANDOM(0, 99)>=50)
        [self showChoice:answer a2:c2];
    else
        [self showChoice:c2 a2:answer];
}

-(void)showChoice:(int)a1
               a2:(int)a2
{
    [self.a1 setCardByValue:a1];
    [self.a2 setCardByValue:a2];
    
    [self.animationManager runAnimationsForSequenceNamed:@"Choice2"];
}

- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint ptTouch = [touch locationInView:touch.view];
    
    Card *touched = nil;
    
    if(CGRectContainsPoint(self.a1.boundingBox, ptTouch))
        touched = self.a1;
    else if(CGRectContainsPoint(self.a2.boundingBox, ptTouch))
        touched = self.a2;
    
    if(touched != nil)
        [touched runAction:[CCRotateBy actionWithDuration:2 angle:360]];
    
    return YES;
}

@end
