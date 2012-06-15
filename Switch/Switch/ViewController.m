//
//  ViewController.m
//  Switch
//
//  Created by rongfzh on 12-6-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize showSwitchValue;
- (void)viewDidLoad
{
    [super viewDidLoad];
    UISwitch *switchButton = [[UISwitch alloc] initWithFrame:CGRectMake(50, 100, 20, 10)];
    [switchButton setOn:YES];
    [switchButton addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switchButton];
    
	// Do any additional setup after loading the view, typically from a nib.
}
//-(void)switchAction:(id)sender
//{
//    UISwitch *switchButton = (UISwitch*)sender;
//    BOOL isButtonOn = [switchButton isOn];
//    if (isButtonOn) {
//        showSwitchValue.text = @"是";
//    }else {
//        showSwitchValue.text = @"否";
//    }
//}

- (void)viewDidUnload
{
    [self setShowSwitchValue:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)switchAction:(id)sender {
    UISwitch *switchButton = (UISwitch*)sender;
    BOOL isButtonOn = [switchButton isOn];
    if (isButtonOn) {
        showSwitchValue.text = @"是";
    }else {
        showSwitchValue.text = @"否";
    }
}
@end
