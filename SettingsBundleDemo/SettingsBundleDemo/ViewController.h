//
//  ViewController.h
//  SettingsBundleDemo
//
//  Created by rongfzh on 12-6-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSMutableArray *aihaoTitles;
    NSMutableArray *aihaoValues;
    NSString *selectedAihao;
}

@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UISlider *level;
- (IBAction)getSettings:(id)sender;
- (IBAction)setSettings:(id)sender;
- (IBAction)doneEdit:(id)sender;


@end
