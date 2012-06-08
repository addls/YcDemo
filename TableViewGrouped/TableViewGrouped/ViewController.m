//
//  ViewController.m
//  TableViewGrouped
//
//  Created by rongfzh on 12-6-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize provinces;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"Provineces" ofType:@"plist"];
    NSMutableArray *array=[[NSMutableArray  alloc] initWithContentsOfFile:plistPath];
    self.provinces = array;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - 
#pragma mark Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //这个方法用来告诉表格有几个分组
    return [provinces count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //这个方法告诉表格第section个分组有多少行
    NSArray *cities = [[provinces objectAtIndex:section]objectForKey:@"Citys"];
    return [cities count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //这个方法用来告诉某个分组的某一行是什么数据，返回一个UITableViewCell
    NSUInteger section = [indexPath section]; 
    NSUInteger row = [indexPath row]; 
    
    
    NSArray *cities = [[provinces objectAtIndex:section]objectForKey:@"Citys"] ;
    
    
    static NSString *GroupedTableIdentifier = @"cell"; 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: 
                             GroupedTableIdentifier]; 
    if (cell == nil) { 
        cell = [[UITableViewCell alloc] 
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:GroupedTableIdentifier]; 
    } 
    
    //给Label附上城市名称  key 为：C_Name
    cell.textLabel.text = [[cities objectAtIndex:row] objectForKey:@"C_Name"]; 
    return cell; 
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //这个方法用来告诉表格第section分组的名称 
    NSString *provincName = [[provinces objectAtIndex:section] objectForKey:@"p_Name"];
    return provincName; 
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    //返回省份的数组
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:35];
    for (NSDictionary *dict in provinces) {
        [array addObject:[dict objectForKey:@"p_Name"]];
    }
    return array;
}



@end
