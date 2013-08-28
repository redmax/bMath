//
//  RoundAnswer.m
//  bMath
//
//  Created by Massimiliano Redolfi on 27/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "RoundAnswer.h"


@implementation RoundAnswer
{
    int _answer;
}

@synthesize animationManager;
@synthesize a1;
@synthesize a2;

- (void) didLoadFromCCB
{
    self.animationManager = self.userObject;
}

-(void)newChoiceWithAnswer:(int)answer
{
    int c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    
    while (answer==c2) {
        c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    }
    _answer = answer;
    
    if(RANDOM(0, 99)>=50)
        [self showChoice:answer c2:c2];
    else
        [self showChoice:c2 c2:answer];
}

-(void)showChoice:(int)c1
               c2:(int)c2
{
    self.a1.tag = c1;
    self.a2.tag = c2;
    
    [self.a1 setCardByValue:c1];
    [self.a2 setCardByValue:c2];
    
    [self.animationManager runAnimationsForSequenceNamed:@"Choice2"];
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint ptTouch = [self convertTouchToNodeSpace:[touches anyObject]];
    
    Card *touched = nil;
    
    if(CGRectContainsPoint(self.a1.boundingBox, ptTouch))
        touched = self.a1;
    else if(CGRectContainsPoint(self.a2.boundingBox, ptTouch))
        touched = self.a2;
    
    if(touched != nil)
    {
        if(touched.tag == _answer)
        {
            [self.animationManager runAnimationsForSequenceNamed:@"AnswerIsOk"];
        } else {
            [self.animationManager runAnimationsForSequenceNamed:@"AnswerIsKo"];            
        }
    }
}
@end
