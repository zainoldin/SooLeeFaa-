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

static CGSize const kSize = {320, 50};

@interface MainViewController ()
@property (nonatomic) UIImageView *titleImageView;
@property (nonatomic) UITextField *textField;
@property (nonatomic) SLFLabel *enterNameLabel;
-(void) setupTitleLayout;
-(void) setupTextFieldLayout;
-(void) setupEnterNameLabel;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTitleLayout];
    [self setupEnterNameLabel];
    [self setupTextFieldLayout];
}

- (void)setupTitleLayout {
    _titleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _titleImageView.translatesAutoresizingMaskIntoConstraints = NO;
    _titleImageView.image = [UIImage imageNamed:@"title"];
    _titleImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:_titleImageView];
    
    [_titleImageView.widthAnchor constraintEqualToConstant:200].active = YES;
    [_titleImageView.heightAnchor constraintEqualToConstant:kSize.height].active = YES;
    [_titleImageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_titleImageView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:75].active = YES;
}

-(void)setupEnterNameLabel {
    _enterNameLabel = [[SLFLabel alloc] initWithText:@"enter your name" fontSize:22];
    _enterNameLabel.frame = CGRectZero;
    [self.view addSubview:_enterNameLabel];
    
    [_enterNameLabel.widthAnchor constraintEqualToConstant:kSize.width].active = YES;
    [_enterNameLabel.heightAnchor constraintEqualToConstant:kSize.height].active = YES;
    [_enterNameLabel.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor].active = YES;
    [_enterNameLabel.topAnchor constraintEqualToAnchor:self.titleImageView.bottomAnchor constant:100].active = YES;
}

- (void)setupTextFieldLayout {
    _textField = [[UITextField alloc] initWithFrame:CGRectZero];
    _textField.translatesAutoresizingMaskIntoConstraints = NO;
    _textField.layer.masksToBounds = YES;
    _textField.layer.cornerRadius = 5;
    _textField.backgroundColor = [UIColor kDarkBlueColor];
    _textField.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_textField];
    
    [_textField.widthAnchor constraintEqualToConstant:kSize.width].active = YES;
    [_textField.heightAnchor constraintEqualToConstant:kSize.height].active = YES;
    [_textField.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_textField.topAnchor constraintEqualToAnchor:self.enterNameLabel.bottomAnchor constant:10].active = YES;
}

@end
