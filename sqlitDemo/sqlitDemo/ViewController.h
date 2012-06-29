//
//  ViewController.h
//  sqlitDemo
//
//  Created by rongfzh on 12-6-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>


@interface ViewController : UIViewController
{
    sqlite3 *db;
}
@end
