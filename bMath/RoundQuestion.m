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

-(void)newQuestion
{
    NSUInteger op1 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE-1);
    NSUInteger op2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE-op1);
    self.answer = op1 + op2;
    
    NSLog(@"%d + %d = %d", op1, op2, self.answer);
    
    [self showCards:op1 op2:op2];
}

-(void)showCards:(NSUInteger)op1
            op2:(NSUInteger)op2
{
    [self.q1 setCardByValue:op1];
    [self.q2 setCardByValue:op2];
    
    [self.q3 setCardByName:CARD_QUESTION];
    [self.op setCardByName:CARD_PLUS];
    [self.eq setCardByName:CARD_EQUAL];
    
    [animationManager runAnimationsForSequenceNamed:@"NewQuestion"];
}

@end
