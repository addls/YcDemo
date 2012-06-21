//
//  ViewController.h
//  DatePickDemo
//
//  Created by rongfzh on 12-6-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)selectDate:(id)sender;
@end
