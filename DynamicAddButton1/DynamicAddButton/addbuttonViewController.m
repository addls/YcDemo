//
//  addbuttonViewController.m
//  DynamicAddButton
//
//  Created by rongfzh on 12-5-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "addbuttonViewController.h"

@interface addbuttonViewController ()

@end

@implementation addbuttonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
}
-(void) someButtonClicked{  
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" 
                                                    message:@"您点击了动态按钮！"   
                                                   delegate:self   
                                          cancelButtonTitle:@"确定"  
                                          otherButtonTitles:nil];  
    [alert show];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)addButton:(id)sender {
    CGRect frame = CGRectMake(90, 200, 200, 60);
    UIButton *someAddButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    someAddButton.backgroundColor = [UIColor clearColor];
    [someAddButton setTitle:@"动态添加一个按钮!" forState:UIControlStateNormal];
    someAddButton.frame = frame;
    [someAddButton addTarget:self action:@selector(someButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:someAddButton];
}


@end
