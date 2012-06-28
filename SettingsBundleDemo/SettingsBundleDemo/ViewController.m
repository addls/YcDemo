//
//  ViewController.m
//  SettingsBundleDemo
//
//  Created by rongfzh on 12-6-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize username;
@synthesize pickerView;
@synthesize level;

- (void)viewDidLoad
{
    [super viewDidLoad];
    aihaoTitles = [[NSMutableArray alloc] init];
    [aihaoTitles addObject:@"足球"];
    [aihaoTitles addObject:@"篮球"];
    [aihaoTitles addObject:@"乒乓球"];
    aihaoValues = [[NSMutableArray alloc] init];
    [aihaoValues addObject:@"football"];
    [aihaoValues addObject:@"basketball"];
    [aihaoValues addObject:@"pingpong"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUsername:nil];
    [self setPickerView:nil];
    [self setLevel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView 
numberOfRowsInComponent:(NSInteger)component
{
	return [aihaoTitles count];
}

-(NSString *) pickerView:(UIPickerView *)pickerView 
			 titleForRow:(NSInteger)row 
			forComponent:(NSInteger)component
{
	return [aihaoTitles objectAtIndex:row];
}

-(void) pickerView:(UIPickerView *)pickerView 
	  didSelectRow:(NSInteger)row 
	   inComponent:(NSInteger)component
{
	selectedAihao = [aihaoTitles objectAtIndex:row];
}
- (IBAction)doneEdit:(id)sender{
    
}
- (IBAction)getSettings:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    username.text =  [defaults objectForKey:@"username"];
    selectedAihao = [defaults objectForKey:@"aihao"];
    NSLog(@"aihao:%@",selectedAihao);
    NSInteger aihaoIndex = [aihaoValues indexOfObject:selectedAihao];
    [pickerView selectRow:aihaoIndex inComponent:0 animated:YES];
    [level setValue:[defaults integerForKey:@"levelState"]];
}

- (IBAction)setSettings:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:username.text forKey:@"username"];
    NSInteger aihaoIndex = [aihaoTitles indexOfObject:selectedAihao];

    [defaults setValue:[aihaoValues  objectAtIndex:aihaoIndex] forKey:@"aihao"];
    [defaults setInteger:level.value forKey:@"levelState"];
    UIAlertView *alert = [[UIAlertView alloc] 
						  initWithTitle:@"偏好设置"
						  message:@"偏好设置已经保存！"
						  delegate:nil 
						  cancelButtonTitle: @"完成" 
						  otherButtonTitles:nil];
	[alert show]; 
}

@end
