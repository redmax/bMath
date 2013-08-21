//
//  Common.h
//  bMath
//
//  Created by Massimiliano Redolfi on 21/08/13.
//  Copyright (c) 2013 Massimiliano Redolfi. All rights reserved.
//

#ifndef bMath_Common_h
#define bMath_Common_h

#import "cocos2d.h"
#import "CCScale9Sprite.h"
#import "CCBAnimationManager.h"

#import "Card.h"

#import "GameModel.h"

#define CARD_1          @"00"
#define CARD_2          @"01"
#define CARD_3          @"02"
#define CARD_4          @"03"
#define CARD_5          @"04"
#define CARD_6          @"05"
#define CARD_7          @"06"
#define CARD_8          @"07"
#define CARD_9          @"08"
#define CARD_10         @"09"
#define CARD_0          @"10"
#define CARD_EQUAL      @"11"
#define CARD_PLUS       @"12"
#define CARD_MINUS      @"13"
#define CARD_QUESTION   @"14"

#define RANDOM(MIN, MAX) (MIN + (MAX+1-MIN)*CCRANDOM_0_1())

#endif
