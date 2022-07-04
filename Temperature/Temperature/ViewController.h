//
//  ViewController.h
//  Temperature
//
//  Created by Michael Balsa on 6/13/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *outputLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)convert:(id)sender;
- (IBAction)switchConversion:(id)sender;

@end

