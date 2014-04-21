//
//  CardMatchingGame.h
//  Test 1b
//
//  Created by Vincent Pillinger on 2/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
@interface CardMatchingGame : NSObject{
    NSMutableArray *cards;
    NSMutableArray *chosenCards;
}
@property (readonly, nonatomic) NSInteger score;
- (id) initWithCardCount:(NSUInteger)count: (Deck *)deck;
- (Card *) chooseCardAtIndex:(NSUInteger)index;
- (void) match:(Card *)card1:(Card *)card2;
@end
