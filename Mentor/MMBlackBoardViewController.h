//
//  MMBlackBoardViewController.h
//  Mentor
//
//  Created by Rajiev Timal on 6/2/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMBlackBoardViewController : UIViewController<UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>

-(void)setMentor:(NSString*)mentor;
-(void)setIndex:(int) index;
@property(nonatomic, assign) int index;
@property (weak, nonatomic) IBOutlet UITextField *textView;
@property (nonatomic, retain) NSMutableArray *messages;
- (IBAction)SendMsg:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *send;
@property (weak, nonatomic) IBOutlet UIImageView *imageradius;
@property (nonatomic, retain) NSString *image;
@property (nonatomic, retain) NSString *name;
@property (weak, nonatomic) IBOutlet UILabel *namelabel;

-(void)changeImage:(NSString *)image;
-(void)changeName:(NSString *)name;

@end
