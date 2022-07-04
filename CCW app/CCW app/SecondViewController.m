//
//  SecondViewController.m
//  CCW
//
//  Created by Michael Balsa on 7/2/22.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
        }


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)hideView:(id)sender {
    
    self.theView.hidden = YES;
}

- (IBAction)showView:(id)sender {
    
    self.theView.hidden = NO;
}
@end
