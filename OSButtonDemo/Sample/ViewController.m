//
//  ViewController.m
//  OSButtonDemo
//
//  Created by Ossey on 2017/6/16.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import "ViewController.h"
#import "OSCustomButton.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    OSCustomButton *btn = [OSCustomButton buttonWithType:OSButtonType1];
    [btn setFrame:CGRectMake(100, 100, 80, 80)];
    [self.view addSubview:btn];
    [btn setSubtitle:@"Apple" forState:UIControlStateNormal];
    btn.detailLabel.font = [UIFont systemFontOfSize:10];
    [btn setImage:[UIImage imageNamed:@"apple-icon"] forState:UIControlStateNormal];
    
    OSCustomButton *btn1 = [OSCustomButton buttonWithType:OSButtonType1];
    [btn1 setFrame:CGRectMake(100, 200, 80, 80)];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"Apple" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont boldSystemFontOfSize:50];
    
    
    OSCustomButton *btn2 = [OSCustomButton buttonWithType:OSButtonType2];
    [btn2 setFrame:CGRectMake(100, 300, 80, 80)];
    [self.view addSubview:btn2];
    [btn2 setImage:[UIImage imageNamed:@"blip-icon"] forState:UIControlStateNormal];
    
    OSCustomButton *btn3 = [OSCustomButton buttonWithType:OSButtonType3];
    [btn3 setFrame:CGRectMake(100, 400, 80, 80)];
    [self.view addSubview:btn3];
    [btn3 setImage:[UIImage imageNamed:@"dropbox-icon"] forState:UIControlStateNormal];
    
    OSCustomButton *btn4 = [[OSCustomButton alloc] init];
    [btn4 setFrame:CGRectMake(100, 500, 80, 80)];
    [btn4 setImage:[UIImage imageNamed:@"partner_boobuz"] forState:UIControlStateNormal];
    [self.view addSubview:btn4];
    
    self.view.backgroundColor = [UIColor yellowColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
