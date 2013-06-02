//
//  MMSignupViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMSignupViewController.h"


@interface MMSignupViewController ()

@end

@implementation MMSignupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       self.modalPresentationStyle = UIModalPresentationFormSheet;
        self.educationQuestions = [[NSMutableArray alloc] initWithArray:@[@"graduate from high school", @"learn how to code", @"get accepted to medical school", @"get into law school", @"finish grad school", @"get a masters degree"]];
        self.categories = [[NSMutableArray alloc] initWithArray:@[@"Education", @"Health", @"Fitness"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(hideSignup)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(hideSignup)];
    self.navigationItem.title = @"Grasshoppr Sign Up";
    self.submitButton.titleLabel.textColor = [UIColor colorWithRed:107.f/255.f green:186.f/255.f blue:112.f/255.f alpha:1.f];
    // Do any additional setup after loading the view from its nib.
}

-(void)hideSignup {
    [self.navigationController dismissModalViewControllerAnimated:YES];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
        return [self.educationQuestions count];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.educationQuestions[row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setSubmitButton:nil];
    [super viewDidUnload];
}
@end
