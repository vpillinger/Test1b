//
//  Card.h
//  Practice 1
//
//  Created by Vincent Pillinger on 2/21/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic) BOOL matched;
@property(nonatomic) BOOL chosen;

- (int)match:(Card *)card;
@end
