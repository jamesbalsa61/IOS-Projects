//
//  ViewController.m
//  RandomWordGenerator
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


- (IBAction)randomNumber:(id)sender {
    
    NSArray *words = @[@"IOS Development", @"Cybersecurity", @"System Administrator", @"Database Administrator"];
    //Create array that will hold our list of string elements
    
    
    int randomNumber = arc4random() % words.count;
    //create variable that utilizes arc4random method and accesses the words pointer.
    
    self.label.text = words[randomNumber];
    //change the label to the random word
}
@end
