//
//  ViewController.m
//  TableViewDemo
//
//  Created by rongfzh on 12-6-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize list = _list;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"美国", @"菲律宾",
                      @"黄岩岛", @"中国", @"泰国", @"越南", @"老挝",
                      @"日本" , nil]; 
    self.list = array; 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.list = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - 
#pragma mark Table View Data Source Methods 
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section { 
    return [self.list count]; 
}
- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath { 
    
    static NSString *TableSampleIdentifier = @"CellIdentifier"; 
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: 
                             TableSampleIdentifier]; 
    if (cell == nil) { 
        cell = [[UITableViewCell alloc] 
                initWithStyle:UITableViewCellStyleValue1
                reuseIdentifier:TableSampleIdentifier]; 
    } 
    
    NSUInteger row = [indexPath row]; 
    cell.textLabel.text = [self.list objectAtIndex:row]; 
    UIImage *image = [UIImage imageNamed:@"qq"]; 
    cell.imageView.image = image; 
    UIImage *highLighedImage = [UIImage imageNamed:@"youdao"]; 
    cell.imageView.highlightedImage = highLighedImage;
    cell.detailTextLabel.text = @"打打打打";
	return cell; 
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowString = [self.list objectAtIndex:[indexPath row]];
    UIAlertView * alter = [[UIAlertView alloc] initWithTitle:@"选中的行信息" message:rowString delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alter show];
}


@end
