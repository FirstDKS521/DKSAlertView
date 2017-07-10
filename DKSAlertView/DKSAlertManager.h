//
//  DKSAlertManager.h
//  DKSAlertView
//
//  Created by aDu on 2017/7/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^AlertIndexBlock)(NSInteger buttonIndex);
@interface DKSAlertManager : NSObject<UIAlertViewDelegate>

/**
 一般的弹框（两个按钮）

 @param title 是否需要”提示“
 @param message 提示内容
 @param cancleButtonTitle 关闭按钮
 @param otherButtonTitle 其他按钮（确定）
 @param clickAtIndex 点击了哪个按钮的回调
 */
+ (void)initWithTitle:(NSString *)title
                       message:(NSString *)message
             cancleButtonTitle:(NSString *)cancleButtonTitle
              otherButtonTitle:(NSString *)otherButtonTitle
                  clickAtIndex:(AlertIndexBlock)clickAtIndex;

@end
