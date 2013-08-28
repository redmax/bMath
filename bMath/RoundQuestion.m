//
//  RoundQuestion.m
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "RoundQuestion.h"

@implementation RoundQuestion

@synthesize q1;
@synthesize q2;
@synthesize q3;
@synthesize op;
@synthesize eq;

@synthesize animationManager;

- (void) didLoadFromCCB
{
    self.animationManager = self.userObject;
}

-(void)showCards;
{
    [self.q1 setCardByValue:[GameModel sharedGameModel].op1];
    [self.q2 setCardByValue:[GameModel sharedGameModel].op2];
    
    [self.q3 setCardByName:CARD_QUESTION];
    [self.op setCardByName:CARD_PLUS];
    [self.eq setCardByName:CARD_EQUAL];
    
    [self.animationManager runAnimationsForSequenceNamed:@"NewQuestion"];
}
@end
