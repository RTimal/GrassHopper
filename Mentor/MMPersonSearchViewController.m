//
//  MMPersonFinderViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMPersonSearchViewController.h"

@interface MMPersonSearchViewController ()

@end

@implementation MMPersonSearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Find People", @"Mentee");
        self.tabBarItem.image = [UIImage imageNamed:@"magnifying_glass"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
