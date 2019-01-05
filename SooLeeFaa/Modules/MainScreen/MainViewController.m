//
//  MainViewController.m
//  SooLeeFaa
//
//  Created by Almas on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import "MainViewController.h"
#import "UIColor+HexString.h"
#import "UIFont+Extension.h"
#import "SLFConstants.h"
#import "SLFLabel.h"
#import "SLFButton.h"

@interface MainViewController ()

-(void) setupTitleLayout;
-(void) setupTextFieldLayout;
-(void) setupEnterNameLabelLayout;
-(void) setupButtonLayout;
-(void) setToView:(UIView *)view size:(CGSize)size;
-(void) setupConstraintsOfView:(UIView *)child relativeTO:(UIView *)parent withPaddingFromTop:(CGFloat)height;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTitleLayout];
    [self setupEnterNameLabelLayout];
    [self setupTextFieldLayout];
    [self setupButtonLayout];
}

- (void)setupTitleLayout {
    _titleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _titleImageView.translatesAutoresizingMaskIntoConstraints = NO;
    _titleImageView.image = [UIImage imageNamed:@"title"];
    _titleImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:_titleImageView];
    
    [self setToView:_titleImageView size:CGSizeMake(200, kButtonSize.height)];
    [_titleImageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_titleImageView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:75].active = YES;
}

-(void)setupEnterNameLabelLayout {
    _enterNameLabel = [[SLFLabel alloc] initWithText:@"enter your name" fontSize:22];
    _enterNameLabel.frame = CGRectZero;
    [self.view addSubview:_enterNameLabel];
    
    [self setToView:_enterNameLabel size:kButtonSize];
    [self setupConstraintsOfView:_enterNameLabel relativeTO:_titleImageView withPaddingFromTop:100];
}

- (void)setupTextFieldLayout {
    _textField = [[UITextField alloc] initWithFrame:CGRectZero];
    _textField.translatesAutoresizingMaskIntoConstraints = NO;
    _textField.layer.masksToBounds = YES;
    _textField.layer.cornerRadius = 5;
    _textField.backgroundColor = [UIColor kDarkBlueColor];
    _textField.textAlignment = NSTextAlignmentCenter;
    _textField.textColor = [UIColor whiteColor];
    _textField.font = [UIFont regularFontWithSize:22];
    [self.view addSubview:_textField];
    
    [self setToView:_textField size:kButtonSize];
    [self setupConstraintsOfView:_textField relativeTO:_enterNameLabel withPaddingFromTop:10];
}

- (void)setupButtonLayout {
    _button = [[SLFButton alloc] initWithTitle:kNext];
    _button.frame = CGRectZero;
    [self.view addSubview:_button];
    
    [self setToView:_button size:kButtonSize];
    [self setupConstraintsOfView:_button relativeTO:self.view withPaddingFromTop:-80];
}

- (void)setupConstraintsOfView:(UIView *)child relativeTO:(UIView *)parent withPaddingFromTop:(CGFloat)height {
    [child.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [child.topAnchor constraintEqualToAnchor:parent.bottomAnchor constant:height].active = YES;
}

- (void)setToView:(UIView *)view size:(CGSize)size {
    [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
    [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
}

@end
