//
//  RoundContainer.m
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "RoundContainer.h"


@implementation RoundContainer

@synthesize question;
@synthesize answer;

@synthesize animationManager;

- (void) didLoadFromCCB
{
    [GameController sharedGameController].roundContainer = self;
    [GameController sharedGameController].roundAnswer = self.answer;
    [GameController sharedGameController].roundQuestion = self.question;
    
    self.animationManager = self.userObject;
}

-(void)newRound
{
    [GameModel sharedGameModel].roundScore = 0;
}

-(void)pressNewQuestion:(id)sender
{
    [[GameController sharedGameController] newQuestion];
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint ptTouch = [self convertTouchToNodeSpace:touch];

    if(CGRectContainsPoint(self.answer.boundingBox, ptTouch))
    {
        [[GameController sharedGameController] endRoundWithAnswer:[self.answer answerAtTouch:touch]];
    }
}

@end
