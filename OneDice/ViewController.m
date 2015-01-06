//
//  ViewController.m
//  OneDice
//
//  Created by Angelito M. Goulart on 16/04/14.
//  Copyright (c) 2014 Angelito M. Goulart. All rights reserved.
//

#import "ViewController.h"
#import "DieView.h"
#import "DieDataController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DieView *mainDieView;
- (IBAction)openAuthorURL:(id)sender;

@end

@implementation ViewController

int count = 0;

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self rollDie];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Detect touch motion
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self rollDie];
}

// Detect shake motion
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self rollDie];
    } 
}

- (void) rollDie
{
    
    // Start counter
    count = 0;
    
    // Call showDie method
    [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(showDie:) userInfo:nil repeats:YES];
    
}

- (void) showDie:(NSTimer *)timer
{
    
    // Display die in screen
    DieDataController *dieController = [[DieDataController alloc] init];
    [self.mainDieView showDieNumber:[dieController getDieNumber]];
    
    // Increment and check counter
    if (++count == 10)
        [timer invalidate];
    
}

- (IBAction)openAuthorURL:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.angelitomg.com/"]];
}
@end
