//
//  ViewController.m
//  Temperature
//
//  Created by Michael Balsa on 6/13/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchConversion:(id)sender {
    
    if (self.segControl.selectedSegmentIndex == 0){
        self.label.text = @"Enter Fahrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"";
    }
    if (self.segControl.selectedSegmentIndex == 1){
        self.label.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"";
    }
    if (self.segControl.selectedSegmentIndex == 1){
        double celsius = [self.textField.text doubleValue];
        double fahrenheit = celsius * 1.8 + 32;
        
        self.outputLabel.text = [NSString stringWithFormat: @"%4.2f Fahrenheit", fahrenheit];
        
        if (fahrenheit > 180) {
            self.imageView.image = [UIImage imageNamed: @"Temp9"];
        } else if (fahrenheit > 160){
            self.imageView.image = [UIImage imageNamed: @"Temp8"];
        } else if (fahrenheit > 140){
            self.imageView.image = [UIImage imageNamed: @"Temp7"];
        } else if (fahrenheit > 120){
            self.imageView.image = [UIImage imageNamed: @"Temp6"];
        } else if (fahrenheit > 100){
            self.imageView.image = [UIImage imageNamed: @"Temp5"];
        } else if (fahrenheit > 80){
            self.imageView.image = [UIImage imageNamed: @"Temp4"];
        } else if (fahrenheit > 60){
            self.imageView.image = [UIImage imageNamed: @"Temp3"];
        } else if (fahrenheit  > 40){
            self.imageView.image = [UIImage imageNamed: @"Temp2"];
        } else if  (fahrenheit < 40){
            self.imageView.image = [UIImage imageNamed: @"Temp1"];
            
        }
    }
    
    [self resignFirstResponder];
    
}

- (IBAction)convert:(id)sender {
    if (self.segControl.selectedSegmentIndex == 0){
        double fahrenheit = [self.textField.text doubleValue];
        double celsius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat: @"%4.2f Celsius", celsius];
        
        if (celsius > 120) {
            self.imageView.image = [UIImage imageNamed: @"Temp9"];
        } else if (celsius > 100){
            self.imageView.image = [UIImage imageNamed: @"Temp8"];
        } else if (celsius > 80){
            self.imageView.image = [UIImage imageNamed: @"Temp7"];
        } else if (celsius > 60){
            self.imageView.image = [UIImage imageNamed: @"Temp6"];
        } else if (celsius > 40){
            self.imageView.image = [UIImage imageNamed: @"Temp5"];
        } else if (celsius > 20){
            self.imageView.image = [UIImage imageNamed: @"Temp4"];
        } else if (celsius > 0){
            self.imageView.image = [UIImage imageNamed: @"Temp3"];
        } else if (celsius  > -20){
            self.imageView.image = [UIImage imageNamed: @"Temp2"];
        } else if  (celsius < -20){
            self.imageView.image = [UIImage imageNamed: @"Temp1"];
            
        }
    }
}
    @end
    
