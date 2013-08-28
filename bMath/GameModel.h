//
//  GameModel.h
//  bMath
//
//  Created by Massimiliano Redolfi on 21/08/13.
//  Copyright (c) 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface GameModel : NSObject

@property (nonatomic, retain) NSString* cardSet;
@property (atomic, assign) NSUInteger op1;
@property (atomic, assign) NSUInteger op2;
@property (atomic, assign) NSUInteger currentAnswer;
@property (atomic, assign) NSUInteger roundScore;

+(GameModel*)sharedGameModel;

-(CCSpriteFrame*)cardSpriteByName:(NSString*)name;

-(BOOL)isCorrectAnswer:(NSInteger)answer;

@end
