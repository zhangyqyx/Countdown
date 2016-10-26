//
//  UIButton+BtnTime.h
//  btnTime
//
//  Created by 张永强 on 16/10/26.
//  Copyright © 2016年 张永强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BtnTime)

/**
 按钮倒计时的问题
 @param countDownTime 倒计时的时间(分钟)
 */
- (void)buttonWithTime:(CGFloat)countDownTime;

@end
