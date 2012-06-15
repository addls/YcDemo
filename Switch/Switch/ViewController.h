//
//  ViewController.h
//  Switch
//
//  Created by rongfzh on 12-6-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *showSwitchValue;
- (IBAction)switchAction:(id)sender;
@end
