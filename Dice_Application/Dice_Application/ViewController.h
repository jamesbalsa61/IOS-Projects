//
//  ViewController.h
//  Dice_Application
//
//  Created by Michael Balsa on 5/29/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *Dice;

@property (strong, nonatomic) IBOutlet UILabel *RollDice;

- (IBAction)Roll:(id)sender;

@end

