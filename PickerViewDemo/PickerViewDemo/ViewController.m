//
//  ViewController.m
//  PickerViewDemo
//
//  Created by rongfzh on 12-6-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize doneToolbar;
@synthesize selectPicker;
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    pickerArray = [NSArray arrayWithObjects:@"动物",@"植物",@"石头",@"天空", nil];
    textField.inputView = selectPicker;
    textField.inputAccessoryView = doneToolbar;
    textField.delegate = self;
    selectPicker.delegate = self;
    selectPicker.dataSource = self;
    selectPicker.frame = CGRectMake(0, 480, 320, 216);

}

- (void)viewDidUnload
{
    [self setDoneToolbar:nil];
    [self setSelectPicker:nil];
    [self setTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Picker Delegate
 
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [pickerArray count];
}
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [pickerArray objectAtIndex:row];
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSInteger row = [selectPicker selectedRowInComponent:0];
    self.textField.text = [pickerArray objectAtIndex:row];
}

- (IBAction)selectButton:(id)sender {
    [textField endEditing:YES];
}
@end
