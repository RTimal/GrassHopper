//
//  MMSecondViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMBlackBoardViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "MMWallViewController.h"

@interface MMWallViewController ()
@property (nonatomic, assign) int curIndex;
@property (nonatomic, retain) NSArray *vcs;

@end

@implementation MMWallViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Mentor Board", @"My Boards");
        self.tabBarItem.image = [UIImage imageNamed:@"speech_bubble_transparent"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   NSMutableDictionary  *mentors =  [self loadMentors];
    
    MMBlackBoardViewController *bb = [[MMBlackBoardViewController alloc] init];
    MMBlackBoardViewController *bb1 = [[MMBlackBoardViewController alloc] init];
    MMBlackBoardViewController *bb2 = [[MMBlackBoardViewController alloc] init];
    [bb setIndex:0];
    [bb1 setIndex:1];
    [bb2 setIndex:2];
    self.vcs = @[bb, bb1, bb2];
    
   // [self pushViewController:bb animated:NO];
    
    [bb setMentor:@"Vivek"];
    [bb1 setMentor:@"Nikhil"];
    [bb2 setMentor:@"Freddie"];
    //setmentorc pic
    //setmentorpic
    [self pushViewController:bb animated:NO];
    self.curIndex = 0;
    self.navigationItem.title = @"Mentor Board";
}

-(void)showNext {
    int nextIndex = self.curIndex+1;
    self.viewControllers=@[self.vcs[nextIndex]];
    self.curIndex = nextIndex;
}

-(void)showPrev {
    int prevIndex = self.curIndex - 1;
    self.viewControllers =@[self.vcs[prevIndex]];
    self.curIndex = prevIndex;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSMutableDictionary *)loadMentors {
    //gram mentor, create a viewcontroller for each one,
    return [[NSMutableDictionary alloc] init];
}

@end