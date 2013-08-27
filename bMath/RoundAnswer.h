//
//  RoundAnswer.h
//  bMath
//
//  Created by Massimiliano Redolfi on 27/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"

@interface RoundAnswer : CCLayer {
    
}

@property (nonatomic, retain) CCBAnimationManager* animationManager;
@property (nonatomic, retain) Card* a1;
@property (nonatomic, retain) Card* a2;

-(void)newChoiceWithAnswer:(int)answer;

@end
