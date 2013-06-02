//
//  MMLoginViewController.h
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMLoginViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UIView *backgroundLayer;
- (IBAction)showSignup:(id)sender;

@end
