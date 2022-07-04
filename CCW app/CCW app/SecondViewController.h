//
//  SecondViewController.h
//  CCW
//
//  Created by Michael Balsa on 7/2/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *theView;

- (IBAction)showView:(id)sender;

- (IBAction)hideView:(id)sender;


@end

NS_ASSUME_NONNULL_END
