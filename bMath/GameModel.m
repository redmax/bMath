//
//  GameModel.m
//  bMath
//
//  Created by Massimiliano Redolfi on 21/08/13.
//  Copyright (c) 2013 Massimiliano Redolfi. All rights reserved.
//

#import "GameModel.h"
#import "cocos2d.h"

@implementation GameModel

@synthesize cardSet = _cardSet;

-(void)setCardSet:(NSString *)cardSet
{
    _cardSet = cardSet;
    [[CCSpriteFrameCache sharedSpriteFrameCache]
        addSpriteFramesWithFile:[NSString stringWithFormat:@"%@.plist", self.cardSet]];
}

-(id)init
{
    if([super init] != nil)
    {
        self.cardSet=@"cards-base";
    }
    
    return self;
}


static GameModel* _sharedGameModel=nil;

+(GameModel *)sharedGameModel
{
    if(_sharedGameModel == nil)
        _sharedGameModel = [[GameModel alloc]init];
    return _sharedGameModel;
}

-(CCSpriteFrame *)cardSpriteByName:(NSString *)name
{
    return [[CCSpriteFrameCache sharedSpriteFrameCache]
            spriteFrameByName:[NSString stringWithFormat:@"%@_%@.png", self.cardSet, name ]];
}


@end
