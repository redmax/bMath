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

NSString* CARDS[] = {CARD_0, CARD_1, CARD_2, CARD_3, CARD_4, CARD_5, CARD_6, CARD_7, CARD_8, CARD_9, CARD_10};

- (void) didLoadFromCCB
{
    self.animationManager = self.userObject;
}

-(void)newQuestion
{
    NSUInteger op1 = RANDOM(1,9);
    NSUInteger op2 = RANDOM(1,10-op1);
    self.answer = op1 + op2;
    
    NSLog(@"%d + %d = %d", op1, op2, self.answer);
    
    [self showCards:op1 op2:op2];
}

-(void)showCards:(NSUInteger)op1
            op2:(NSUInteger)op2
{
    [self.q1 setCardByName:CARDS[op1]];
    [self.q2 setCardByName:CARDS[op2]];
    
    [self.q3 setCardByName:CARD_QUESTION];
    [self.op setCardByName:CARD_PLUS];
    [self.eq setCardByName:CARD_EQUAL];
    
    [animationManager runAnimationsForSequenceNamed:@"NewQuestion"];
}

@end
