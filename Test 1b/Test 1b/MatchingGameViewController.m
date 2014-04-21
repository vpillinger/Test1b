//
//  MatchingGameViewController.m
//  Test 1b
//
//  Created by Vincent Pillinger on 2/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "MatchingGameViewController.h"
#import "PlayingCardDeck.h"
@interface MatchingGameViewController ()

@end

@implementation MatchingGameViewController
@synthesize scoreLabel;
@synthesize cardButtons;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Deck *d = [[PlayingCardDeck alloc] init];
    cardGame = [[CardMatchingGame alloc] initWithCardCount:16 :d];
}

- (void)viewDidUnload
{
    [self setCardButtons:nil];
    [self setScoreLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)buttonPressed:(UIButton *)sender {
    Card *chosenCard = [cardGame chooseCardAtIndex:sender.tag];
    if(chosenCard.matched || chosenCard.chosen){
        UIImage *buttonImage = [UIImage imageNamed:@"Default-568@2x.png"];
        [sender setImage:buttonImage forState:UIControlStateNormal];
        [sender setTitle:[chosenCard contents] forState:UIControlStateNormal];
    }else{
        UIImage *buttonImage = [UIImage imageNamed:@"morback.png"];
        [sender setImage:buttonImage forState:UIControlStateNormal];
        [sender setTitle:nil forState:UIControlStateNormal];
    }
    [scoreLabel setText:[NSString stringWithFormat:@"Score: %d",cardGame.score]];
}
@end
