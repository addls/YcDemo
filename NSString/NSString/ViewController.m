//
//  ViewController.m
//  NSString
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
//    
//    //1、创建常量字符串。
//    NSString *astring = @"我是字符串";
//    
//    
//    //2、创建空字符串，给予赋值。
//    
//    NSString *astring = [[NSString alloc] init];
//    astring = @"This is a String!";
//    NSLog(@"astring:%@",astring);
    
    //内存指向
//    NSString *bstring = @"我是字符串";
//    NSString *astring = [[NSString alloc] init];
//    NSLog(@"astring point address:0x%.8x", astring);
//    NSLog(@"bstring point address:0x%.8x", bstring);
//    astring=@"我是字符串";
//    NSLog(@"重新赋值之后的astring point address:0x%.8x", astring);
//    NSLog(@"astring:%@",astring);
    
    
    
    
//    //3、在以上方法中，提升速度:initWithString方法
//    
//    NSString *astring = [[NSString alloc] initWithString:@"This is a String!"];
//    NSLog(@"astring:%@",astring);
//    [astring release];
    
    
//    NSString* string1 = @"我是甲一号";
//    NSString *string2 = @"我是甲一号";
//    BOOL result = [string1 isEqualToString:string2];
//    if (result) {
//        NSLog(@"字符串相同");
//    }
//    
    
//    NSString* string1 = @"我是甲一号";
//    NSString *string2 = @"我是甲一号";
//    BOOL result = [string1 compare:string2];
//    if (result == NSOrderedSame) {
//        NSLog(@"字符串相同");
//    }
    
    
//    NSMutableString *nMutableString = [[NSMutableString alloc]init];
//    NSString *nstring = @"美国,加拿大,澳大利亚,津巴布韦,埃及";
//    NSArray *array = [nstring componentsSeparatedByString:@","];
//    for (int i = 0; i < [array count]; i++) {
//        NSLog(@"string:%@", [array objectAtIndex:i]);
//    }
    
    //格式化输出
//    int a = 100;
//    int b = 8;
//    NSString *astring = [[NSString alloc] initWithString:[NSString stringWithFormat:@"%d.这是第 %i 字符串",a,b]];
//    NSLog(@"astring:%@",astring);
    
    //4、用标准c创建字符串:initWithUTF8String方法
    
//    char *Cstring = "我是字符串";
//    NSString *astring = [[NSString alloc] initWithUTF8String:Cstring];
//    NSLog(@"astring:%@",astring);

//    NSString *string1 = @"卡拉是条狗";
//    NSString *string2 = @"狗狗叫卡拉";
//    //字符串以开头比较
//    if([string1 hasPrefix:@"卡拉"])
//    {
//        NSLog(@"字符串string1以卡拉开头");
//    }
//    //字符串以结尾比较
//    if([string2 hasSuffix:@"卡拉"])
//    {
//        NSLog(@"string2字符串以卡拉结尾");
//    }
    NSString *string = @"我们是 gong产 主义 接班人";
    NSString *temp = @"gong产";
    NSString *me = @"我";
    NSRange rang = [string rangeOfString:temp];
    NSRange rang1 = [string rangeOfString:me];
    
    NSLog(@"搜索的字符串在string中起始点的index 为 %d", rang.location);
    NSLog(@"搜索的字符串在string中结束点的index 为 %d", rang.location + rang.length);
    NSLog(@"我 在字符串 string中的起点的index  为 %d",rang1.location);
    
    //将搜索中的字符串替换成为一个新的字符串
    NSString *str = [string stringByReplacingCharactersInRange:rang withString:@"大产"];
    NSLog(@"替换后字符串为%@", str);
    
    //将字符串中" " 全部替换成 *
    str = [string stringByReplacingOccurrencesOfString :@" " withString:@"*"];
    NSLog(@"替换后字符串为%@", str);
    

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
