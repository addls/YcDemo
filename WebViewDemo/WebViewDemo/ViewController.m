//
//  ViewController.m
//  WebViewDemo
//
//  Created by rongfzh on 12-6-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [webView setDelegate:self];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.163.com"]];
    [self.view addSubview: webView];
    [webView loadRequest:request];
    
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


- (void) webViewDidStartLoad:(UIWebView *)webView
{
    //创建UIActivityIndicatorView背底半透明View     
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];  
    [view setTag:108];  
    [view setBackgroundColor:[UIColor blackColor]];  
    [view setAlpha:0.5];  
    [self.view addSubview:view];  
    
    activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];  
    [activityIndicator setCenter:view.center];  
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];  
    [view addSubview:activityIndicator];  

    [activityIndicator startAnimating];
    NSLog(@"webViewDidStartLoad");
}
- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    [activityIndicator stopAnimating];
    UIView *view = (UIView*)[self.view viewWithTag:108];
    [view removeFromSuperview];
    NSLog(@"webViewDidFinishLoad");

}
- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [activityIndicator stopAnimating];
    UIView *view = (UIView*)[self.view viewWithTag:108];
    [view removeFromSuperview];
    NSLog(@"didFailLoadWithError:%@", error);
}
@end
