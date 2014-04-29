//
//  Deck.m
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import "Card.h"
#import "Deck.h"

@implementation Deck

- (NSMutableArray *)cards {
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}
- (void)addCard:(Card *)card {
    [self addCard:card atTop:false];
}

- (Card *)getRandomCard {
    Card *randomCard = nil;
    
    unsigned index = arc4random() % [self.cards count];
    randomCard = self.cards[index];

    return randomCard;
}

- (Card *)pullRandomCard {
    Card * card = [self getRandomCard];
    // TODO: Correct?
    [self.cards removeObject:card];
    return card;
}

@end
