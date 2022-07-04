//
//  ViewController.m
//  DigitnalClock
//
//  Created by Michael Balsa on 7/4/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateTimer];
    //Triggers and calls updateTimer function once. 
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    //NSTimer - A timer that fires after a certain time interval has elapsed, sending a specified message to a target object.
    //scheduleTimerWithTimeInterval - Creates a timer and schedules it on the current run loop in the default mode.
    
    self.settings.hidden = YES;
    //Hides the settingsView
    self.settingsButton.alpha = 0.15;
    //tints the settingbutton
    
    //self.setting.layer.cornerRadius = 5;
    //self.settingsButton.cornerRadius = 5;
}

-(void)updateTimer {
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    //alloc - Returns a new instance of the receiving class.
    //init -  initialize the receiver immediately after memory for it has been allocated.
    //NSDateFormatter - A formatter that converts between dates and their textual representations.
    
    [timeFormat setDateFormat:@"HH:mm:ss"];
    //setDateFormat - Initilizes the date format
    
    self.label.text = [timeFormat stringFromDate:[NSDate date]];
    //stringFromDate - Returns a string representation of a specified date that the system formats using the receiver’s current settings.
    // NSDate - A representation of a specific point in time, independent of any calendar or time zone.
    
}


- (IBAction)backgroundImageSeg:(id)sender {
    //displays the background images
    
    self.image.hidden = NO;
    
    if (self.imageBackground.selectedSegmentIndex == 0){
        self.image.image = [UIImage imageNamed:@"one"];
    }
    
    if (self.imageBackground.selectedSegmentIndex == 1){
        self.image.image = [UIImage imageNamed:@"two"];
    }
    
    if (self.imageBackground.selectedSegmentIndex == 2){
        self.image.image = [UIImage imageNamed:@"three"];
    }
    
    if (self.imageBackground.selectedSegmentIndex == 3){
        self.image.image = [UIImage imageNamed:@"four"];
    }
    
}

- (IBAction)backgroundColor:(id)sender {
    //displays the background colors
    
    self.image.hidden = YES;
    
    if (self.backgroundColor.selectedSegmentIndex == 0){
        self.view.backgroundColor = [UIColor redColor];
    }
    
    if (self.backgroundColor.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor yellowColor];
    }
    
    if (self.backgroundColor.selectedSegmentIndex == 2){
        self.view.backgroundColor = [UIColor greenColor];
    }
    
    if (self.backgroundColor.selectedSegmentIndex == 3){
        self.view.backgroundColor = [UIColor brownColor];
    }
    
}

- (IBAction)clockColor:(id)sender {
    //displays the clock colors
    
    if (self.clockColorSeg.selectedSegmentIndex == 0){
        self.label.textColor = [UIColor redColor];
    }
    
    if (self.clockColorSeg.selectedSegmentIndex == 1){
        self.label.textColor = [UIColor yellowColor];
        
    }
    
    if (self.clockColorSeg.selectedSegmentIndex == 2){
        self.label.textColor = [UIColor greenColor];
        
        }
    
    if (self.clockColorSeg.selectedSegmentIndex == 3){
        self.label.textColor = [UIColor brownColor];
        }
    }

- (IBAction)showsettings:(id)sender {
    
    if (self.settings.hidden == YES) {
        self.settings.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
        //displays the settings view
    } else {
        self.settings.hidden = YES;
        self.settingsButton.alpha = 0.15;
        [self.settingsButton setTitle: @"Show settings" forState:UIControlStateNormal];
        //closes the settings view
    }
}
@end
