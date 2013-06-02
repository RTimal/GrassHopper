//
//  MMSecondViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMWallViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface MMWallViewController ()

@end

@implementation MMWallViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"My Boards", @"My Boards");
        self.tabBarItem.image = [UIImage imageNamed:@"speech_bubble_transparent"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
