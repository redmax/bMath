//
//  GameController.m
//  bMath
//
//  Created by Massimiliano Redolfi on 21/08/13.
//  Copyright (c) 2013 Massimiliano Redolfi. All rights reserved.
//

#import "GameController.h"
#import "Common.h"
#import "RoundQuestion.h"
#import "RoundContainer.h"
#import "RoundAnswer.h"

@implementation GameController

static GameController* _sharedGameController = nil;

+(GameController*)sharedGameController
{
    if(_sharedGameController == nil)
        _sharedGameController = [[GameController alloc]init];
    return _sharedGameController;
}

// --> World --> Level --> Round

-(void)newQuestion
{
    NSUInteger op1 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE-1);
    NSUInteger op2 = RANDOM(MIN_CARD_VALUE, MAX_CARD_VALUE-op1);
    NSUInteger res = op1 + op2;
    
    NSLog(@"%d + %d = %d", op1, op2, res);

    [GameModel sharedGameModel].currentAnswer = op1 + op2;
    [GameModel sharedGameModel].op1 = op1;
    [GameModel sharedGameModel].op2 = op2;
    
    [self.roundQuestion showCards];
    [self.roundAnswer newChoice];
}

-(void)endRoundWithAnswer:(NSInteger)answer
{
    if([[GameModel sharedGameModel] isCorrectAnswer:answer])
    {
        [GameModel sharedGameModel].roundScore++;
        [self.roundAnswer.animationManager runAnimationsForSequenceNamed:@"AnswerIsOk"];
    } else {
        [self.roundAnswer.animationManager runAnimationsForSequenceNamed:@"AnswerIsKo"];
    }
}
@end
