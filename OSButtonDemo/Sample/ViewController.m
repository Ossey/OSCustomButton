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
    
    OSCustomButton *btn = [[OSCustomButton alloc] initWithFrame:CGRectMake(100, 100, 80, 80) buttonType:OSButtonType1];
    [self.view addSubview:btn];
    [btn setSubtitle:@"Apple"];
    btn.detailLabel.font = [UIFont systemFontOfSize:10];
    btn.image = [UIImage imageNamed:@"apple-icon"];
    
    OSCustomButton *btn1 = [[OSCustomButton alloc] initWithFrame:CGRectMake(100, 200, 80, 80) buttonType:OSButtonType1];
    [self.view addSubview:btn1];
    btn1.title = @"Apple";
    btn1.titleLabel.font = [UIFont boldSystemFontOfSize:50];
    
    
    OSCustomButton *btn2 = [[OSCustomButton alloc] initWithFrame:CGRectMake(100, 300, 80, 80) buttonType:OSButtonType2];
    [self.view addSubview:btn2];
    btn2.image = [UIImage imageNamed:@"blip-icon"];
    
    OSCustomButton *btn3 = [[OSCustomButton alloc] initWithFrame:CGRectMake(100, 400, 80, 80) buttonType:OSButtonType3];
    [self.view addSubview:btn3];
    btn3.image = [UIImage imageNamed:@"dropbox-icon"];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
