//
//  Card.m
//  Practice 1
//
//  Created by Vincent Pillinger on 2/21/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "Card.h"

@implementation Card
-(int)match:(Card *)aCard {
    if ([aCard.contents isEqualToString:self.contents]) {
        return 1;
    } else {
        return 0;
    }
}
@end
