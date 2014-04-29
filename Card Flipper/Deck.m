//
//  Deck.m
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import "Deck.h"

@implementation Deck

- (id)init {
    NSString *nom = nil;
    NSString *suit = nil;
    
    if (self = [super init]) {
        for (nom in @[@"6", @"7", @"8", @"9", @"10", @"B", @"D", @"K", @"T"]) {
            for (suit in @[@"♠", @"♣", @"♥", @"♦"]) {
                Card *card = [[Card alloc] init];
                card.content = [NSString stringWithFormat:@"%@%@", nom, suit];
                [self addCard:card];
            }
        }
    }
    
    return self;
}

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
