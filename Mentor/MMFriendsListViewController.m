//
//  MMFirstViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMFriendsListViewController.h"

@interface MMFriendsListViewController ()

@end

@implementation MMFriendsListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"My Mentees", @"My Mentees");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

-(void)changeTitle:(NSString *)newTitle {
    self.title = newTitle;
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
