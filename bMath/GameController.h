//
//  GameController.h
//  bMath
//
//  Created by Massimiliano Redolfi on 21/08/13.
//  Copyright (c) 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"

@class RoundContainer;
@class  RoundAnswer;
@class RoundQuestion;

@interface GameController : NSObject

@property (nonatomic, retain) RoundContainer* roundContainer;
@property (nonatomic, retain) RoundQuestion* roundQuestion;
@property (nonatomic, retain) RoundAnswer* roundAnswer;

+(GameController*)sharedGameController;

-(void)newQuestion;
-(void)endRoundWithAnswer:(NSInteger)answer;

@end
