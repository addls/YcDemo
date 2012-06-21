//
//  RootViewController.m
//  NavigationControllerDemo
//
//  Created by rongfzh on 12-6-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
#import "ThridViewController.H"

@interface RootViewController ()

@end

@implementation RootViewController

-(void)selectLeftAction:(id)sender
{
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了导航栏左按钮" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alter show];
}

-(void)selectRightAction:(id)sender
{
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了导航栏右按钮" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alter show];
}
-(void)segmentAction:(id)sender
{
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了鸡翅" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alter show];

        }
        break;
    case 1:
        {
            UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你点击了排骨" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alter show];
        }
        break;
        
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
   
    NSArray *array = [NSArray arrayWithObjects:@"鸡翅",@"排骨", nil];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    segmentedController.segmentedControlStyle = UISegmentedControlSegmentCenter;

    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"根视图" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;

    
    
     
    //添加toolbar
    [self.navigationController  setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    UIBarButtonItem *four = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [self setToolbarItems:[NSArray arrayWithObjects:flexItem, one, flexItem, two, flexItem, three, flexItem, four, flexItem, nil]];
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

- (IBAction)gotoSecondView:(id)sender {
    SecondViewController *secondView = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondView animated:YES];
    secondView.title = @"Second View";
}
-(void)gotoThridView:(id)sender
{
    ThridViewController *thridView = [[ThridViewController alloc] init];
    [self.navigationController pushViewController:thridView animated:YES];
    thridView.title = @"Thrid View";
    
}
@end
