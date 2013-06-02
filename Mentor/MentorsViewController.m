//
//  MentorsViewController.m
//  Mentor
//
//  Created by Rajiev Timal on 6/2/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MentorsViewController.h"

@interface MentorsViewController ()
@property(nonatomic, retain) NSMutableArray *mentors;
@property(nonatomic, retain) NSMutableArray *quotes;
@end

@implementation MentorsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.mentors = [[NSMutableArray alloc]initWithArray:@[@"Vivek", @"Cavaugn", @"Nikhil"]];
        self.quotes = [[NSMutableArray alloc] initWithArray:@[@"Lorem ipsum", @"Lorem ipsum", @"Lorem ipsum"]];
        self.navigationItem.title = @"Add a new Mentor";
    }
    return self;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"mentorcell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [button addTarget:self action:@selector(addButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    cell.accessoryView = button;
    cell.textLabel.text = self.mentors[indexPath.row];
    cell.detailTextLabel.text = self.quotes[indexPath.row];
    
    return cell;
}

-(void)addButtonTapped {
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Mentor Request Sent" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.mentors count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
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
