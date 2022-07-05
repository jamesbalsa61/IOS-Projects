//
//  ViewController.h
//  PictureGallery
//
//  Created by Michael Balsa on 7/5/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int imageInt;
    
    
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *next;


- (IBAction)backButton:(id)sender;
- (IBAction)nextButton:(id)sender;

@end

