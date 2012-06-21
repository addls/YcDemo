//
//  ViewController.m
//  IosSandbox
//
//  Created by rongfzh on 12-6-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //获取程序的Home目录
    /**
    NSString *homeDir = NSHomeDirectory();
    NSLog(@"%@", homeDir);
    
    //打印document目录
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSLog(@"path:%@", path);

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSLog(@"%@", path);
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSLog(@"%@", path);
    
    //tem目录
    NSString *tmpDir = NSTemporaryDirectory();
    NSLog(@"%@", tmpDir);

        
    
    //写入文件testFile.txt
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex:0];
    if (!docDir) {
        NSLog(@"Documents 目录未找到");        
    }
    NSArray *array = [[NSArray alloc] initWithObjects:@"内容",@"content",nil];
    NSString *filePath = [docDir stringByAppendingPathComponent:@"testFile.txt"];
    [array writeToFile:filePath atomically:YES];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths objectAtIndex:0];
    NSString *filePath = [docDir stringByAppendingPathComponent:@"testFile.txt"];
    NSArray *array = [[NSArray alloc]initWithContentsOfFile:filePath];
    NSLog(@"%@", array);
    **/
    
/*****
 *创建目录和文件
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);  
    NSString *documentsDirectory = [paths objectAtIndex:0];  
    NSLog(@"documentsDirectory%@",documentsDirectory);  
    NSFileManager *fileManager = [NSFileManager defaultManager];  
    NSString *testDirectory = [documentsDirectory stringByAppendingPathComponent:@"test"];  
    // 创建目录
    [fileManager createDirectoryAtPath:testDirectory withIntermediateDirectories:YES attributes:nil error:nil];

    NSString *testPath = [testDirectory stringByAppendingPathComponent:@"test00.txt"];  
    NSString *testPath2 = [testDirectory stringByAppendingPathComponent:@"test22.txt"];  
    NSString *testPath3 = [testDirectory stringByAppendingPathComponent:@"test33.txt"];  

    
    NSString *string = @"写入内容，write String";
    [fileManager createFileAtPath:testPath contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [fileManager createFileAtPath:testPath2 contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [fileManager createFileAtPath:testPath3 contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
*/
    /**
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);  
    NSString *documentsDirectory = [paths objectAtIndex:0];  
    NSFileManager *fileManager = [NSFileManager defaultManager];  
    NSString *testDirectory = [documentsDirectory stringByAppendingPathComponent:@"test"];  

    NSArray *file = [fileManager subpathsOfDirectoryAtPath: testDirectory error:nil]; 
    NSLog(@"fileList:%@",file);  
    NSArray *files = [fileManager subpathsAtPath: testDirectory ]; 
    NSLog(@"fileLit%@",files);

    

    //创建文件管理器
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    //更改到待操作的目录下
    [fileManager changeCurrentDirectoryPath:[documentsDirectory stringByExpandingTildeInPath]];
    //创建文件fileName文件名称，contents文件的内容，如果开始没有内容可以设置为nil，attributes文件的属性，初始为nil
    NSString * fileName = @"testFileNSFileManager.txt";
    NSArray *array = [[NSArray alloc] initWithObjects:@"hello world",@"hello world1", @"hello world2",nil];
    [fileManager createFileAtPath:fileName contents:array attributes:nil];

    //删除文件
//    [fileManager removeItemAtPath:fileName error:nil];
        **/
    
    /**
    NSString * fileName = @"testFileNSFileManager.txt";
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    //获取文件路径
    NSString *path = [documentsDirectory stringByAppendingPathComponent:fileName];
    //待写入的数据
    NSString *temp = @"nihao 洪文!";
    int dataInt = 1234332;
    float dataFloat = 3.14f;
    //创建数据缓冲
    NSMutableData *writer = [[NSMutableData alloc] init];
    //将字符串添加到缓冲中
    [writer appendData:[temp dataUsingEncoding:NSUTF8StringEncoding]];   
    //将其他数据添加到缓冲中
    [writer appendBytes:&dataInt length:sizeof(dataInt)];
    [writer appendBytes:&dataFloat length:sizeof(dataFloat)];  
    //将缓冲的数据写入到文件中
    [writer writeToFile:path atomically:YES];
    //读取数据：
    int intData;
    float floatData = 0.0;
    NSString *stringData;
    
    NSData *reader = [NSData dataWithContentsOfFile:path];
    stringData = [[NSString alloc] initWithData:[reader subdataWithRange:NSMakeRange(0, [temp length])]
                                   encoding:NSUTF8StringEncoding];
    [reader getBytes:&intData range:NSMakeRange([temp length], sizeof(intData))];
    [reader getBytes:&floatData range:NSMakeRange([temp length] + sizeof(intData), sizeof(floatData))];
    NSLog(@"stringData:%@ intData:%d floatData:%f", stringData, intData, floatData);
    **/
    
//    通过使用下面的方法得到程序的main bundle
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *imagePath = [mainBundle pathForResource:@"QQ20120616-1" ofType:@"png"];
    NSLog(@"%@", imagePath);
    UIImage *image = [[UIImage alloc]initWithContentsOfFile:imagePath];
    UIImageView  *imageView = [[UIImageView alloc] initWithImage:image]; 
    [self.view addSubview:imageView];
    

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
