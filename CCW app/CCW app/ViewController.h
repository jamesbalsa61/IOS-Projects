//
//  ViewController.h
//  stackViews
//
//  Created by Michael Balsa on 7/2/22.
//

#import <UIKit/UIKit.h>
#import "FourthViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

- (IBAction)switch:(id)sender;

- (IBAction)alert:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *glock;

@property (strong, nonatomic) IBOutlet UILabel *colt;

@property (strong, nonatomic) IBOutlet UILabel *m9;

@property (strong, nonatomic) IBOutlet UILabel *colt1;


- (IBAction)colt:(id)sender;

- (IBAction)m9:(id)sender;

@end

