//
//  ViewController.m
//  Dice_Application
//
//  Created by Michael Balsa on 5/29/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)Roll:(id)sender {
    int min = 1;
    int max = 7;
    
    int randomNumber = arc4random_uniform(max - min) + min;
    //formula generates random value 1 through 6
    self.RollDice.text = [NSString stringWithFormat:@"Rolled a %i", randomNumber];
    //replaces RollDIce label with following string input
    self.Dice.image =[UIImage imageNamed:[NSString stringWithFormat: @"Dice%i.png", randomNumber]];
}
@end
