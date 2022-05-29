//
//  ViewController.h
//  RandomNumber
//
//  Created by Michael Balsa on 5/29/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelOne;

@property (strong, nonatomic) IBOutlet UILabel *labelTwo;

- (IBAction)number:(id)sender;


- (IBAction)numberGenerator:(id)sender;

@end

