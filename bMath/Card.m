//
//  Card.m
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize image;

-(void)setCardByName:(NSString *)name
{
    [self.image setSpriteFrame:
        [[GameModel sharedGameModel] cardSpriteByName:name]];
}

-(void)setCardByValue:(int)value
{
    [self.image setSpriteFrame:
     [[GameModel sharedGameModel] cardSpriteByName:CARDS[value]]];
}

@end
