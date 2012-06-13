//
//  ViewController.m
//  BaseType
//
//  Created by rongfzh on 12-6-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //为了方便演示，在界面启动时，我们加入测试代码
    //输出数据与内存中所占字节数
    //整型
    int integerType = 5;
    //浮点型
    float floatType = 3.1415;
    //双浮点型
    double doubleType = 2.2033;
    //短整型
    short int shortType = 200;
    //长整型
    long long int longlongType = 7758123456767L;
    //c语言字符串
    char * cstring = "this is a string!";
    
    
    //整型
    NSLog(@"The value of integerType = %d",integerType);
    //浮点型
    NSLog(@"The value of floatType = %.2f",floatType);
    //双浮点型
    NSLog(@"The value of doubleType = %e",doubleType);
    //短整型
    NSLog(@"The value of shortType = %hi",shortType);
    //长整型
    NSLog(@"The value of longlongType = %lli",longlongType);
    //c语言字符串
    NSLog(@"The value of cstring = %s",cstring);

	
    
    NSLog(@"The size of an int is: %lu bytes.",sizeof(int));
	NSLog(@"The size of a short int is: %lu bytes.",sizeof(short int));
	NSLog(@"The size of a long int is: %lu bytes.",sizeof(long int));
	NSLog(@"The size of a char is: %lu bytes.",sizeof(char));
	NSLog(@"The size of a float is: %lu bytes.",sizeof(float));
	NSLog(@"The size of a double is: %lu bytes.",sizeof(double));
	NSLog(@"The size of a bool is: %lu bytes.",sizeof(bool));	

    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[NSNumber numberWithInt:88]];
    
    NSNumber *num = [NSNumber numberWithInt:88];
    NSInteger integer = [num intValue];
    
    NSInteger integerNumber = 888;
    NSString * string = [NSString stringWithFormat:@"%d",integerNumber];
    NSLog(@"string is %@", string);
    
    integer = [string intValue];
    NSLog(@"integer is%d", integerNumber);
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

@end
