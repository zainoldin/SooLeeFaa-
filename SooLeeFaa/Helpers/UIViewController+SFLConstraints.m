//
//  UIViewController+SFLConstraints.m
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIViewController+SFLConstraints.h"

@implementation UIViewController(SFLConstraints)

- (void)setupConstraintsOfView:(UIView *)child relativeTO:(UIView *)parent withPaddingFromTop:(CGFloat)height {
    [child.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [child.topAnchor constraintEqualToAnchor:parent.bottomAnchor constant:height].active = YES;
}

- (void)setToView:(UIView *)view size:(CGSize)size {
    [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
    [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
}
@end
