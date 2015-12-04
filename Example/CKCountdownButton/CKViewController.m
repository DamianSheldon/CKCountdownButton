//
//  CKViewController.m
//  CKCountdownButton
//
//  Created by Quanlong He on 08/02/2014.
//  Copyright (c) 2014 Quanlong He. All rights reserved.
//

#import <CKCountdownButton/CKCountdownButton.h>

#import "CKViewController.h"

@interface CKViewController ()

@property (weak, nonatomic) IBOutlet CKCountdownButton *fetchVerifyButton;

@end

@implementation CKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.fetchVerifyButton setTitle:@"(#)秒后重新获取" forState:UIControlStateDisabled];
    self.fetchVerifyButton.backgroundColorForDisabledState = [UIColor lightGrayColor];
    [self.fetchVerifyButton addTarget:self action:@selector(handleFetchVerifyCode:) forControlEvents:UIControlEventTouchUpInside];
    self.fetchVerifyButton.count = 60;
}

- (void)handleFetchVerifyCode:(CKCountdownButton *)sender
{
    NSLog(@"%s", __func__);
    
    [sender startClockTimer];
}

@end
