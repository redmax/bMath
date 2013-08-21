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

+(GameModel*)sharedGameModel;

-(CCSpriteFrame*)cardSpriteByName:(NSString*)name;

@end
