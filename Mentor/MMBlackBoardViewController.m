//
//  MMBlackBoardViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/2/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMBlackBoardViewController.h"
#import "MMWallViewController.h"

@interface MMBlackBoardViewController ()

@end

@implementation MMBlackBoardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Mentor Board", @"Blackboards");
        self.tabBarItem.image = [UIImage imageNamed:@"speech_bubble_transparent"];
    }
    return self;
}

-(void)setMentor:(NSString*)mentor {
    self.navigationItem.title = mentor;
}

-(void)setIndex:(int)index {
    _index = index;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if(_index == 0) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next Mentor" style:UIBarButtonItemStyleBordered target:self action:@selector(showNext)];
    }
    
    if(_index == 1) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next Mentor" style:UIBarButtonItemStylePlain target:self action:@selector(showNext)];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Prev Mentor" style:UIBarButtonItemStylePlain target:self action:@selector(showPrevious)];
    }
    
    if(_index == 2) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Prev Mentor" style:UIBarButtonItemStylePlain target:self action:@selector(showPrevious)];
    }

    // Do any additional setup after loading the view from its nib.
}

-(void)showNext {
    [(MMWallViewController*)self.navigationController showNext];
}


-(void)showPrevious {
    [(MMWallViewController*)self.navigationController showPrev];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTextView:nil];
    [super viewDidUnload];
}
@end
