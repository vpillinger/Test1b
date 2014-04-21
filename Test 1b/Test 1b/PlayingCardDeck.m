//
//  PlayingCardDeck.m
//  Practice 1
//
//  Created by Vincent Pillinger on 2/21/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck
- (id)init {
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger i =1; i<[PlayingCard maxRank] ; i++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = i;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
