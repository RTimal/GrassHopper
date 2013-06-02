//
//  MMSignupViewController.h
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMSignupViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property(nonatomic, retain) NSMutableArray *educationQuestions;
@property(nonatomic, retain) NSMutableArray *categories;

@end
