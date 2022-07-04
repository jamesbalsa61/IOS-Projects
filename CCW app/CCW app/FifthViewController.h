//
//  FifthViewController.h
//  CCW
//
//  Created by Michael Balsa on 7/3/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FifthViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *theView;

- (IBAction)showView:(id)sender;

- (IBAction)hideView:(id)sender;


@end

NS_ASSUME_NONNULL_END
