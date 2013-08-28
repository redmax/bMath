//
//  RoundQuestion.h
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Common.h"

@interface RoundQuestion : CCLayer {

}

@property (nonatomic,retain) CCBAnimationManager* animationManager;
@property (nonatomic,retain) Card *q1;
@property (nonatomic,retain) Card *q2;
@property (nonatomic,retain) Card *q3;
@property (nonatomic,retain) Card *op;
@property (nonatomic,retain) Card *eq;

-(void)showCards;

@end
