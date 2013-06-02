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

    // Do any additional setup after loading the view from its nib.
}

-(void)hideSignup {
    [self.navigationController dismissModalViewControllerAnimated:YES];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == 1) {
        return [self.categories count];
    } else if(component == 2) {
        return [self.educationQuestions count];
    }
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if(component == 1) {
        return @"Categories";
    } else {
        return @"Goals";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
