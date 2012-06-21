//
//  SecondViewController.m
//  NavigationControllerDemo
//
//  Created by rongfzh on 12-6-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "ThridViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
//    [button setTitle: @"自定义title" forState: UIControlStateNormal];
//    [button sizeToFit];
//    self.navigationItem.titleView = button;
    
    [self.navigationController  setToolbarHidden:YES animated:YES];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(gotoThridView:)];
    toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height - toolBar.frame.size.height - 44.0, self.view.frame.size.width, 44.0)];
    [toolBar setBarStyle:UIBarStyleDefault];
    toolBar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [toolBar setItems:[NSArray arrayWithObject:addButton]];
    [self.view addSubview:toolBar];
     
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
 
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)gotoThridView:(id)sender
{
    ThridViewController *thridView = [[ThridViewController alloc] init];
    [self.navigationController pushViewController:thridView animated:YES];
    thridView.title = @"Thrid View";

}

@end
