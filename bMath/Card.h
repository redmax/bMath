//
//  Card.h
//  bMath
//
//  Created by Massimiliano Redolfi on 19/08/13.
//  Copyright 2013 Massimiliano Redolfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"

@interface Card : CCNode {
    
}

@property (nonatomic, retain) CCScale9Sprite* image;

-(void)setCardByName:(NSString*)name;

@end
