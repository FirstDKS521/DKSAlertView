//
//  DKSAlertManager.m
//  DKSAlertView
//
//  Created by aDu on 2017/7/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "DKSAlertManager.h"

static AlertIndexBlock indexBlock;
@implementation DKSAlertManager

+ (void)initWithTitle:(NSString *)title message:(NSString *)message cancleButtonTitle:(NSString *)cancleButtonTitle otherButtonTitle:(NSString *)otherButtonTitle clickAtIndex:(AlertIndexBlock)clickAtIndex
{
    indexBlock = [clickAtIndex copy];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancleButtonTitle otherButtonTitles:otherButtonTitle, nil];
    [alertView show];
}

#pragma mark ====== UIAlertViewDelegate ======
+ (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    indexBlock(buttonIndex);
}

+ (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    indexBlock = nil;
}

@end
