//
//  Deck.h
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (nonatomic) NSMutableArray *cards;

- (void)addCard:(Card *)card;
- (Card *)getRandomCard;

@end
