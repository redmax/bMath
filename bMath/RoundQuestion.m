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
    [self.q1 setCardByName:@"card_1.png"];
    [self.q2 setCardByName:@"card_2.png"];
    [self.q3 setCardByName:@"op_question.png"];
    [self.op setCardByName:@"op_plus.png"];
    [self.eq setCardByName:@"op_eq.png"];
    
    [animationManager runAnimationsForSequenceNamed:@"NewQuestion"];
}

@end
