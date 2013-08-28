//
//  RoundAnswer.m
//  bMath
//
//  Created by Massimiliano Redolfi on 27/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "RoundAnswer.h"


@implementation RoundAnswer

@synthesize animationManager;
@synthesize a1;
@synthesize a2;

- (void) didLoadFromCCB
{
    self.animationManager = self.userObject;
}

-(void)newChoice
{
    NSUInteger answer = [GameModel sharedGameModel].currentAnswer;
    
    int c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    
    while (answer==c2) {
        c2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE);
    }
    
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

-(NSInteger)answerAtTouch:(UITouch *)touch
{
    CGPoint pt = [self convertTouchToNodeSpace:touch];
    
    NSInteger n = -1;
    if(CGRectContainsPoint(self.a1.boundingBox, pt))
        n = self.a1.tag;
    else if(CGRectContainsPoint(self.a2.boundingBox, pt))
        n = self.a2.tag;
    
    return n;
}

@end
