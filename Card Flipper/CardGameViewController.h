//
//  CardGameViewController.h
//  Card Flipper
//
//  Created by Oleg Gordienko on 29.04.14.
//  Copyright (c) 2014 Stanford University cs193p. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

@property (strong, nonatomic) Deck *deck;

@end
