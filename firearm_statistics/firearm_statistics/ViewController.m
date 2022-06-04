//
//  ViewController.m
//  firearm_statistics
//
//  Created by Michael Balsa on 5/31/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self button:nil];
}


- (IBAction)button:(id)sender {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Random_firearms" ofType:@"plist"];
 // Allows us access to the Random_firearms list, and we clarify the type of file we will be accessing.
    

    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    //Allows us to access our dictionary and elements inside our path.
    NSMutableArray *array = dict[@"firearms"];
    // Allows access to our Array called "firearms"
    
    int randomNum = arc4random() % [array count];
    // initates the random number method
    NSDictionary *dataSelect = array[randomNum];
    
    self.imageView.image = [UIImage imageNamed:dataSelect[@"Image"]];
    //Give access to the Image
    self.labelOne.text = dataSelect[@"firearm_Series"];
    self.labelTwo.text = [NSString stringWithFormat:@"Capacity: %@", dataSelect[@"Capacity:"]];
    self.labelThree.text = [NSString stringWithFormat:@"Conceal Carry: %@", dataSelect[@"Conceal Carry:"]];
    self.labelFour.text = [NSString stringWithFormat:@"Reason: %@", dataSelect[@"Reason:"]];
    self.labelFive.text = [NSString stringWithFormat:@"Caliber: %@", dataSelect[@"Caliber:"]];
    self.labelSix.text = [NSString stringWithFormat:@"Rate: %@", dataSelect[@"Rate:"]];
    //Randomizes the firearms statistics.
}
@end
