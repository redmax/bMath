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

@synthesize animationManager;

- (void) didLoadFromCCB
{
    self.animationManager = self.userObject;
}

-(void)newRound
{
    [self.question newQuestion];
}

-(void)pressNewQuestion:(id)sender
{
    [self.question newQuestion];
    [self.answer newChoiceWithAnswer: self.question.answer];
}

@end
