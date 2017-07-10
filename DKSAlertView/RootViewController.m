//
//  RootViewController.m
//  DKSAlertView
//
//  Created by aDu on 2017/7/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "RootViewController.h"
#import "DKSAlertManager.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)alertView:(id)sender {
    [DKSAlertManager initWithTitle:@"温馨提醒" message:@"这是我自定义的弹框，最低支持iOS7.0版本" cancleButtonTitle:@"关闭" otherButtonTitle:@"确定" clickAtIndex:^(NSInteger buttonIndex) {
        NSLog(@"点击了第%@个", @(buttonIndex));
    }];
}

@end
