//
//  ViewController.m
//  RandomNumber
//
//  Created by Michael Balsa on 5/29/22.
//

#import "ViewController.h"

@interface ViewController ()







@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)numberGenerator:(id)sender {
    int min = 1;
    int max =55;
    
    int randomNumber = arc4random_uniform(max - min) + min;
    self.labelTwo.text = [NSString stringWithFormat: @"%i", randomNumber];
}

- (IBAction)number:(id)sender {
    int randomNumber = arc4random() % 55;
    //starts from 0 to 55.
    self.labelOne.text = [NSString stringWithFormat: @"%i", randomNumber];
    //Allows the label to convert integer value to string value
}
@end
