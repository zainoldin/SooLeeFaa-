//
//  MainViewController.h
//  SooLeeFaa
//
//  Created by Almas on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLFLabel.h"
#import "SLFButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController
@property (nonatomic) UIImageView *titleImageView;
@property (nonatomic) UITextField *textField;
@property (nonatomic) SLFLabel *enterNameLabel;
@property (nonatomic) SLFButton *button;
@end

NS_ASSUME_NONNULL_END
