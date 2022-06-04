//
//  ViewController.h
//  firearm_statistics
//
//  Created by Michael Balsa on 5/31/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UILabel *labelOne;

@property (strong, nonatomic) IBOutlet UILabel *labelTwo;

@property (strong, nonatomic) IBOutlet UILabel *labelThree;

@property (strong, nonatomic) IBOutlet UILabel *labelFour;

@property (strong, nonatomic) IBOutlet UILabel *labelFive;

@property (strong, nonatomic) IBOutlet UILabel *labelSix;

- (IBAction)button:(id)sender;

@end

