//
//  ViewController.h
//  Calculator
//
//  Created by Michael Balsa on 6/12/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int operation;
    
    float result;
    float recentNumber;
}

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *limit;
- (IBAction)pressed:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)operations:(id)sender;


@end

