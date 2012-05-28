//
//  calculatorViewController.m
//  Calculator
//
//  Created by rongfzh on 12-5-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "calculatorViewController.h"


@interface calculatorViewController ()
@property (nonatomic) BOOL userIsInTheMiddleOfEnterImgANumber;
@end

@implementation calculatorViewController
@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnterImgANumber = _userIsInTheMiddleOfEnterImgANumber;
- (IBAction)digitPressed:(UIButton*)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"digit pressed = %@",digit);
    if(self.userIsInTheMiddleOfEnterImgANumber){
        self.display.text = [self.display.text stringByAppendingFormat:digit];
    }else {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnterImgANumber = YES;
    }
}
- (IBAction)operationPressed:(id)sender {

}
- (IBAction)enterPressed {
    
}

- (IBAction)insertaction:(id)sender {
}
@end
