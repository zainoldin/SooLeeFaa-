//
//  GameModesViewController.h
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLFLabel.h"
#import "SLFButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameModesViewController : UIViewController
@property (nonatomic) UIImageView *titleImageView;
@property (nonatomic) SLFLabel *chooseModeLabel;
@property (nonatomic) SLFButton *button;
@end

NS_ASSUME_NONNULL_END
