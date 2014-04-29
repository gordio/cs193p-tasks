//
//  CardGameViewController.m
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"

@interface CardGameViewController ()

@end

@implementation CardGameViewController

- (Deck *)deck {
    if (!_deck)
        _deck = [[Deck alloc] init];

    return _deck;
}

- (IBAction)touchCard:(UIButton *)button {
    if (![button.currentTitle length]) {
        // Front
        [button setImage:nil forState:UIControlStateNormal];
        Card *card = [self.deck getRandomCard];
        [button setTitle:card.content forState:UIControlStateNormal];
    } else {
        // Back
        [button setImage:[UIImage imageNamed:@"cardicon"] forState:UIControlStateNormal];
        [button setTitle:nil forState:UIControlStateNormal];
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
