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
    self.view.backgroundColor = [UIColor blackColor];
    [self setupSubviews1];
}

- (void)setupSubviews1 {
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
}

- (void)setupSubviews2 {
    
    CGFloat width = 80;
    CGFloat height = width;
    CGFloat horizontalSpace = 30;
    CGFloat globalverticalSpace = 30.0;
    
    NSMutableArray<NSString *> *subviewKeyArray = [NSMutableArray arrayWithCapacity:0];
    NSMutableDictionary *subviewDict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *metrics = @{@"horizontalSpace": @(horizontalSpace), @"width": @(width), @"height": @(height)}.mutableCopy;
    
    OSCustomButton *btn = [OSCustomButton buttonWithType:OSButtonType1];
    [self.view addSubview:btn];
    [btn setSubtitle:@"Apple" forState:UIControlStateNormal];
    btn.detailLabel.font = [UIFont systemFontOfSize:10];
    [btn setImage:[UIImage imageNamed:@"apple-icon"] forState:UIControlStateNormal];
    [subviewKeyArray addObject:@"btn"];
    subviewDict[subviewKeyArray.lastObject] = btn;
    
    OSCustomButton *btn1 = [OSCustomButton buttonWithType:OSButtonType1];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"Apple" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont boldSystemFontOfSize:50];
    [subviewKeyArray addObject:@"btn1"];
    subviewDict[subviewKeyArray.lastObject] = btn1;
    
    OSCustomButton *btn2 = [OSCustomButton buttonWithType:OSButtonType2];
    [self.view addSubview:btn2];
    [btn2 setImage:[UIImage imageNamed:@"blip-icon"] forState:UIControlStateNormal];
    [subviewKeyArray addObject:@"btn2"];
    subviewDict[subviewKeyArray.lastObject] = btn2;
    
    OSCustomButton *btn3 = [OSCustomButton buttonWithType:OSButtonType3];
    [self.view addSubview:btn3];
    [btn3 setImage:[UIImage imageNamed:@"dropbox-icon"] forState:UIControlStateNormal];
    [subviewKeyArray addObject:@"btn3"];
    subviewDict[subviewKeyArray.lastObject] = btn3;
    
    OSCustomButton *btn4 = [[OSCustomButton alloc] init];
    [btn4 setImage:[UIImage imageNamed:@"partner_boobuz"] forState:UIControlStateNormal];
    [self.view addSubview:btn4];
    [subviewKeyArray addObject:@"btn4"];
    subviewDict[subviewKeyArray.lastObject] = btn4;
    
    // 设置垂直约束
    NSMutableString *verticalFormat = [NSMutableString new];
    
    for (NSInteger i = 0; i < subviewKeyArray.count; ++i) {
        NSString *viewName = subviewKeyArray[i];
        UIView *view = subviewDict[viewName];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"[%@(==width)]", viewName] options:0 metrics:metrics views:subviewDict]];
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
        
        if (i == 0) {
            [verticalFormat appendFormat:@"[%@(==height)]", viewName];
        }
        else if (i == subviewKeyArray.count - 1) {
            [verticalFormat appendFormat:@"-(%.f@750)-", globalverticalSpace];
        }
        else {
            [verticalFormat appendFormat:@"-(%.f@750)-[%@(==height)]", globalverticalSpace, viewName];
        }
        
        
    }
    
    // 向contentView分配垂直约束
    if (verticalFormat.length > 0) {
        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:|%@|", verticalFormat]
                                                                                 options:0
                                                                                 metrics:metrics
                                                                                   views:subviewDict]];
    }
    
    
}



@end
