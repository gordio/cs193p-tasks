//
//  Card.m
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize content = _content;

- (NSString *)content {
    return _content;
}
- (void)setContent:(NSString *)content {
    _content = content;
}

@end
