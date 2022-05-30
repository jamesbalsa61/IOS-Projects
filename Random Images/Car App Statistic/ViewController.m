//
//  ViewController.m
//  Car App Statistic
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


- (IBAction)pickImage:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource: @"RandomImages" ofType: @"plist"];
    //path to the images that wil allow the compiler to pick random image from pist
    
    NSDictionary *dict =  [[NSDictionary alloc ] initWithContentsOfFile:path];
    NSMutableArray *array = dict[@"Image"];
    
    int randomNum = arc4random() % array.count;
    self.imageView.image = [UIImage imageNamed: array[randomNum]];
}
@end
