//
//  ViewController.m
//  RangeDay
//
//  Created by Michael Balsa on 6/30/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.aimLabel.layer.cornerRadius = 30;
    self.aimLabel.clipsToBounds = YES;
    
    timerInt = 20;
    scoreInt = 0;
    gameMode = 0;
    
    //Swiping Functionality
    self.timeLabel.text = [NSString stringWithFormat: @"Time:%i", timerInt];
    self.scoreLabel.text = [NSString stringWithFormat: @"Score:%i", scoreInt];
    
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipes:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipes:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipes:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipes:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    //Swiping Functionality
}


- (IBAction)startGame:(id)sender {
    
    if (timerInt == 20 ){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(update) userInfo:nil repeats:YES];
        
        [self instructions];
        
        gameMode = 1;
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
        
    }
    
    if (timerInt == 0){
        
        timerInt = 20;
        scoreInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat: @"Time:%i", timerInt];
        self.scoreLabel.text = [NSString stringWithFormat: @"Score:%i", scoreInt];
        
        [self.startButton setTitle: @"start Game" forState:UIControlStateNormal];
        self.aimLabel.text = @"Aim";
    }
}

-(void)update {
    timerInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat: @"Time:%i", timerInt];
    
    if (timerInt == 0){
        [timer invalidate];
        [aimTimer invalidate];
        
        gameMode = 0;
        
        self.startButton.enabled = YES;
        self.startButton.alpha = 1.0;
        
        [self.startButton setTitle: @"Try Again" forState:UIControlStateNormal];
        
    }
}

-(void)instructions {
    
    NSArray *array = @[@"Aim Right", @"Aim Left", @"Aim Up", @"Aim down"];
    // Instructions
    
    int pickInstructions = arc4random() % array.count;
    self.aimLabel.text = array[pickInstructions];
    aimTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(instructions) userInfo:nil repeats:NO];
    
}

-(void)swipes:(UISwipeGestureRecognizer *)sender {
    
    
    if (gameMode == 1){
        
        //AimRight
        if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
            [aimTimer invalidate];
            
            if ([self.aimLabel.text isEqualToString:@"Aim Right"]){
                scoreInt += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                [self instructions];
                
            } else {
                scoreInt -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                [self instructions];
            }
        }
        //Aim Left
        if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
            [aimTimer invalidate];
            
            if ([self.aimLabel.text isEqualToString:@"Aim Left"]){
                scoreInt += 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                [self instructions];
            } else {
                scoreInt -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                [self instructions];
                
                
            }
        }
    }
    //Aim Up
    if (sender.direction == UISwipeGestureRecognizerDirectionUp) {
        [aimTimer invalidate];
        
        if ([self.aimLabel.text isEqualToString:@"Aim Up"]){
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
            [self instructions];
        } else {
            scoreInt -= 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
            [self instructions];
            }
        }
    //AimDown
    if (sender.direction == UISwipeGestureRecognizerDirectionDown) {
        [aimTimer invalidate];
        
        if ([self.aimLabel.text isEqualToString:@"Aim Down"]){
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
            [self instructions];
        } else {
            scoreInt -= 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
            [self instructions];
            }
        }
    }
    @end
    
