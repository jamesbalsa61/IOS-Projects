//
//  ViewController.h
//  DigitnalClock
//
//  Created by Michael Balsa on 7/4/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    //declaration of NSTimer
}


@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UIView *settings;
@property (strong, nonatomic) IBOutlet UISegmentedControl *clockColorSeg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *backgroundColor;
@property (strong, nonatomic) IBOutlet UIButton *settingsButton;
@property (strong, nonatomic) IBOutlet UISegmentedControl *imageBackground;


- (IBAction)showsettings:(id)sender;
- (IBAction)clockColor:(id)sender;
- (IBAction)backgroundColor:(id)sender;
- (IBAction)backgroundImageSeg:(id)sender;

@end

