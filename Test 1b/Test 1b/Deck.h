//
//  Deck.h
//  Practice 1
//
//  Created by Vincent Pillinger on 2/21/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
@property (strong, nonatomic) NSMutableArray *cards;
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
