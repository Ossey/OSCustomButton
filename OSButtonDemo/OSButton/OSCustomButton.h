//
//  OSCustomButton.h
//  OSButtonDemo
//
//  Created by Ossey on 2017/6/17.
//  Copyright © 2017年 Ossey. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, OSButtonType) {
    OSButtonType1,
    OSButtonType2,
    OSButtonType3
};

@interface OSCustomButton : UIControl

@property (nonatomic, assign) OSButtonType buttonType;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, strong) UIColor *contentColor;
@property (nonatomic, strong) UIColor *foregroundColor;
@property (nonatomic, strong) UIColor *borderAnimateColor;
@property (nonatomic, strong) UIColor *contentAnimateColor;
@property (nonatomic, strong) UIColor *foregroundAnimateColor;
@property (nonatomic, assign) BOOL restoreSelectedState;
@property (nonatomic, assign) BOOL fadeInOutOnDisplay;
@property (nonatomic, readonly, strong) UILabel *titleLabel;
@property (nonatomic, readonly, strong) UILabel *detailLabel;
@property (nonatomic, readonly, strong) UIImageView *imageView;
@property (nonatomic, assign) UIEdgeInsets contentEdgeInsets;

- (instancetype)initWithFrame:(CGRect)frame buttonType:(OSButtonType)type;
+ (instancetype)buttonWithFrame:(CGRect)frame buttonType:(OSButtonType)type;

- (void)setTitle:(NSString *)title;
- (void)setSubtitle:(NSString *)subtitle;
- (void)setImage:(UIImage *)image;

@end


