//
//  CardMatchingGame.m
//  Test 1b
//
//  Created by Vincent Pillinger on 2/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "CardMatchingGame.h"

@implementation CardMatchingGame
- (id) initWithCardCount:(NSUInteger)count :(Deck *)deck{
    self = [super init];
    if(self){
        _score = 0;
        chosenCards = [[NSMutableArray alloc] initWithCapacity:2];//this is terrible but its also 12:18AM
        cards = [[NSMutableArray alloc] initWithCapacity:count];
        for (nil; count > 0; count--){
            [cards addObject:[deck drawRandomCard]];
        }
    }
    return self;
}
- (Card *) chooseCardAtIndex:(NSUInteger)index{
    Card *chosenCard = [cards objectAtIndex:index];
    if(chosenCard.matched){
        return chosenCard;
    }
    if(chosenCard.chosen){
        chosenCard.chosen = NO;
        [chosenCards removeObject:chosenCard];
    }
    else{
        _score--;
        chosenCard.chosen = YES;
        [chosenCards addObject:chosenCard];
        if([chosenCards count] > 1){
            [self match:chosenCard:[chosenCards objectAtIndex:0]];
        }
    }
    return chosenCard;
}
- (void) match:(Card *)card1:(Card *)card2{
    _score += [card1 match:card2];
    card1.matched = YES;
    card2.matched = YES;
    card1.chosen = NO;
    card2.chosen = NO;
    [chosenCards removeObject:card1];
    [chosenCards removeObject:card2];
}
@end
