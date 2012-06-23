//
//  ViewController.h
//  WebViewDemo
//
//  Created by rongfzh on 12-6-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    UIWebView *webView;
    UIActivityIndicatorView *activityIndicator;
    
}
@end
