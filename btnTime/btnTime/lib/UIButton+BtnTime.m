//
//  UIButton+BtnTime.m
//  btnTime
//
//  Created by 张永强 on 16/10/26.
//  Copyright © 2016年 张永强. All rights reserved.
//

#import "UIButton+BtnTime.h"
/** 倒计时的显示时间 */
static NSInteger secondsCountDown;
/** 记录总共的时间 */
static NSInteger allTime;

@implementation UIButton (BtnTime)

- (void)buttonWithTime:(CGFloat)countDownTime {
    self.userInteractionEnabled = NO;
    secondsCountDown = 60 * countDownTime;
    allTime = 60 * countDownTime;
    [self setTitle:[NSString stringWithFormat:@"%lds后重新获取",secondsCountDown] forState:UIControlStateNormal];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeFireMethod:) userInfo:nil repeats:YES];
}
-(void)timeFireMethod:(NSTimer *)countDownTimer{
    //倒计时-1
    secondsCountDown--;
    //修改倒计时标签现实内容
    [self setTitle:[NSString stringWithFormat:@"%lds后重新获取",secondsCountDown] forState:UIControlStateNormal];
    //当倒计时到0时，做需要的操作，比如验证码过期不能提交
    if(secondsCountDown == 0){
        [countDownTimer invalidate];
        [self setTitle:@"重新获取" forState:UIControlStateNormal];
        secondsCountDown = allTime;
        self.userInteractionEnabled = YES;
    }
}
@end
