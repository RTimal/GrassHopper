//
//  MMLoginViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMLoginViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "MMSignupViewController.h"
#import "MMFriendsListViewController.h"
#import "MMWallViewController.h"
#import "MMProfileViewController.h"
#import "MMPersonSearchViewController.h"

@interface MMLoginViewController ()

@end

@implementation MMLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        /*self.title = NSLocalizedString(@"Wall", @"Wall");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        CAGradientLayer *gradient = [CAGradientLayer layer];
        gradient.frame = self.view.frame;
        gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:0.f green:0.9f blue:0.f alpha:1.0f] CGColor], (id)[[UIColor blackColor] CGColor], nil];
        [self.view.layer insertSublayer:gradient atIndex:0];
         */
        [[self.email layer] setBorderColor:[[UIColor colorWithRed:255.f/255.0 green:255.f/255.0 blue:255.f/255.0 alpha:1.0] CGColor]];
        [[self.email layer] setBorderColor:[[UIColor colorWithRed:255.f/255.0 green:255.f/255.0 blue:255.f/255.0 alpha:1.0] CGColor]];
        
        

        self.view.backgroundColor = [UIColor colorWithRed:107.f/255.f green:186.f/255.f blue:112.f/255.f alpha:1.f];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                       initWithTarget:self
                                       action:@selector(dismissKeyboard)];
     
        self.title = NSLocalizedString(@"Login", @"My Mentees");
        self.tabBarItem.image = [UIImage imageNamed:@"house"];
        [self.view addGestureRecognizer:tap];
    }
    return self;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"here");
    [textField resignFirstResponder];
    return NO;
}

-(void)showSignup:(id)sender {
    UINavigationController *nav = [[UINavigationController alloc] init];
    MMSignupViewController *signup = [[MMSignupViewController alloc] init];
    [nav setWantsFullScreenLayout:NO];
    [nav setViewControllers:@[signup]];
    [self presentModalViewController:nav animated:YES];
}

- (IBAction)Login:(id)sender {
    
    MMWallViewController *wall = [[MMWallViewController alloc] init];
    MMProfileViewController *profile = [[MMProfileViewController alloc] init];
    MMPersonSearchViewController *personSearch = [[MMPersonSearchViewController alloc] init];
    
    [UIView animateWithDuration:1.0f animations:^{
        self.view.frame = CGRectMake(0,640,320,640);
    } completion:^(BOOL success){
         self.tabBarController.viewControllers = @[wall, personSearch, profile];
    }];
    
}

-(void)hideSignup {
    [self dismissModalViewControllerAnimated:YES];
}

-(void)dismissKeyboard {
    [self.password resignFirstResponder];
    [self.email resignFirstResponder];
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.backgroundLayer.layer.cornerRadius = 10.0f;
    self.backgroundLayer.opaque = NO;
    self.backgroundLayer.layer.masksToBounds = NO;
    self.backgroundLayer.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
    
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {

    [self setPassword:nil];
    [self setEmail:nil];
    [self setBackgroundLayer:nil];
    [super viewDidUnload];
}

@end
