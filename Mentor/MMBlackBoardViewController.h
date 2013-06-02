//
//  MMBlackBoardViewController.h
//  Mentor
//
//  Created by Rajiev Timal on 6/2/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMBlackBoardViewController : UIViewController<UITextFieldDelegate>

-(void)setMentor:(NSString*)mentor;
-(void)setIndex:(int) index;
@property(nonatomic, assign) int index;
@property (weak, nonatomic) IBOutlet UITextField *textView;

@end
