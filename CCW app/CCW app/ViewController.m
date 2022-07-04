//
//  ViewController.m
//  stackViews
//
//  Created by Michael Balsa on 7/2/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switch:(id)sender {
    
    FourthViewController *fourth = [[FourthViewController alloc] initWithNibName:nil bundle:nil];
    fourth.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:fourth animated:YES completion:nil];
}
- (IBAction)alert:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Glock" message:@"Want learn about Glock? Refer to Glock Button on top!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *button = [UIAlertAction actionWithTitle:@"Okay!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.glock.text = @"Press Glock";
        
        
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [alert dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    
    [alert addAction:cancel];
    [alert addAction:button];
    
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)m9:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"M9" message:@"Want learn about M9? Refer to M9 Button on top!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *button = [UIAlertAction actionWithTitle:@"Okay!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.m9.text = @"Press M9";
        
        
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [alert dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    
    [alert addAction:cancel];
    [alert addAction:button];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)colt:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Colt" message:@"Want learn about Colt? Refer to Colt Button on top!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *button = [UIAlertAction actionWithTitle:@"Okay!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        self.colt.text = @"Press Colt";
        self.colt1.text = @"Press Colt";
        
        
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [alert dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    
    [alert addAction:cancel];
    [alert addAction:button];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
