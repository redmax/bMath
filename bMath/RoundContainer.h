//
//  RoundContainer.h
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"
#import "RoundQuestion.h"
#import "RoundAnswer.h"

@interface RoundContainer : CCLayer {
    
}

@property (nonatomic, retain) CCBAnimationManager* animationManager;
@property (nonatomic, retain) RoundQuestion* question;
@property (nonatomic, retain) RoundAnswer* answer;

-(void)newRound;
-(void)pressNewQuestion:(id)sender;

@end
