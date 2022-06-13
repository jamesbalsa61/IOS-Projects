//
//  ViewController.m
//  Calculator
//
//  Created by Michael Balsa on 6/12/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)operations:(id)sender {
    if(operation == 0) result = recentNumber;
    else {
        switch (operation){
            case 1:
                result = result + recentNumber;
                    self.limit.text = @"Addition";
                break;
            case 2:
                result = result - recentNumber;
                    self.limit.text = @"Subtract";
                break;
            case 3:
                result = result * recentNumber;
                    self.limit.text = @"Multiply";
                break;
            case 4:
                result = result / recentNumber;
                    self.limit.text = @"Divide";
                break;
            default:
                break;
        }
    }
    recentNumber = 0;
    //
    self.label.text = [NSString stringWithFormat:@"%6.0f", result];
    
    if ([sender tag] == 0) result = 0; {
        operation = (int)[sender tag];
        //Displays the Total Results
    }
    
}
- (IBAction)cancel:(id)sender {
    recentNumber = 0;
    self.label.text = @"0";
}

- (IBAction)pressed:(id)sender {
    recentNumber = recentNumber *10 +(float)[sender tag];
    //convert decimal value into whole number value
    self.label.text = [NSString stringWithFormat:@"%6.0f", recentNumber];
    //
}
@end
