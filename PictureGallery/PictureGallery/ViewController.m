//
//  ViewController.m
//  PictureGallery
//
//  Created by Michael Balsa on 7/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    imageInt = 1;
    //assigns the imageInt to integer 1.
    
    [self imageGallery];
    //Calls the imageGallery function
}


- (IBAction)nextButton:(id)sender {
    imageInt += 1;
    //increases the image integer value 1/6 to 2/6 and ex.
    [self imageGallery];
    //calls the imageGallery function
    
    if (imageInt == 5){
        
        
    }
}

- (IBAction)backButton:(id)sender {
    imageInt -= 1;
    [self imageGallery];
}

-(void)imageGallery {
    
    self.label.text = [NSString stringWithFormat:@"%i/5", imageInt];
    //converts the integer value into string value in order display it on the label
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"image%i", imageInt]];
    //Displays the images inside the imageView. intergrate imageInt number inside our image.
    
    if (imageInt == 1) {
        self.back.enabled = NO;
        self.back.alpha = 0.25;
    } else if (imageInt == 5 ){
        self.next.enabled = NO;
        self.next.alpha = 0.25;
    } else {
        self.back.enabled = YES;
        self.next.enabled = YES;
        
        self.back.alpha = 1.0;
        self.next.alpha = 1.0; 
        
    }
    
}


@end
