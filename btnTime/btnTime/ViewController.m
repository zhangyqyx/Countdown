//
//  ViewController.m
//  btnTime
//
//  Created by 张永强 on 16/10/26.
//  Copyright © 2016年 张永强. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+BtnTime.h"
#import "NSString+Mobile.h"

@interface ViewController ()

/** textfield */
@property (nonatomic , strong)UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor greenColor];
    btn.frame = CGRectMake(0, 0, 100, 30);
    btn.center = self.view.center;
    [btn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.titleLabel.textAlignment = NSTextAlignmentRight;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
   self.textField = [[UITextField alloc] initWithFrame:CGRectMake(70, 30, 150, 30)];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.placeholder = @"请输入手机号码";
    [self.view addSubview:_textField];
    UIButton *mobileBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    mobileBtn.backgroundColor = [UIColor greenColor];
    mobileBtn.frame = CGRectMake(100, 70, 100, 30);
    [mobileBtn setTitle:@"判断手机号" forState:UIControlStateNormal];
    [mobileBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    mobileBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    mobileBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    [mobileBtn addTarget:self action:@selector(mobileBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:mobileBtn];
}
//手机验证码
- (void)btnClick:(UIButton *)btn{
     [btn buttonWithTime:1.0];
}
//判断手机号是否正确
- (void)mobileBtnClick:(UIButton *)btn{
  BOOL isTelephone = [NSString valiMobile:self.textField.text];
    if (isTelephone) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"是手机号码" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"不是手机号码" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}


@end
