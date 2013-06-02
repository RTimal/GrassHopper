//
//  MMBlackBoardViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/2/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMBlackBoardViewController.h"
#import "MMWallViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface MMBlackBoardViewController ()

@end

@implementation MMBlackBoardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Mentor Board", @"Blackboards");
        self.tabBarItem.image = [UIImage imageNamed:@"speech_bubble_transparent"];
        self.messages = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.messages count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.f;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(void)changeImage:(NSString *)image {
    self.image = image;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"messagesCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = self.messages[indexPath.row];
    
    return cell;
}

-(void)setMentor:(NSString*)mentor {
    self.navigationItem.title = mentor;
}

-(void)changeName:(NSString*)name {
    self.name = name;
}

-(void)setIndex:(int)index {
    _index = index;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if(self.namelabel != nil) {
        self.namelabel.text = self.name;
    }
    
    
    self.imageradius.image = [UIImage imageNamed:self.image];
    [self.imageradius.layer setCornerRadius:10.f];
    self.imageradius.layer.masksToBounds = YES;
    self.imageradius.layer.shadowColor = [UIColor grayColor].CGColor;
    self.imageradius.layer.shadowOffset = CGSizeMake(1.f,1.f);
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
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
    [self sendAMsg];
    return YES;
}

-(void)sendAMsg {
    [self.textView resignFirstResponder];
    NSLog(@"%@", self.textView.text);
    NSAttributedString *string = [@"ME: " stringByAppendingString:self.textView.text];
    [self.messages addObject:[@"ME: " stringByAppendingString:self.textView.text]];
    [self.tableView reloadData];
    self.textView.text = @"";
    [self dismissKeyboard];
    NSIndexPath* ipath = [NSIndexPath indexPathForRow: [self.messages count]-1 inSection: 0];
    [self.tableView scrollToRowAtIndexPath: ipath atScrollPosition: UITableViewScrollPositionTop animated: YES];
}
-(void)dismissKeyboard {
    [self.textView resignFirstResponder];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTextView:nil];
    [self setTableView:nil];
    [self setSend:nil];
    [self setImageradius:nil];
    [self setNamelabel:nil];
    [super viewDidUnload];
}
- (IBAction)SendMsg:(id)sender {
    [self sendAMsg];
}
@end
