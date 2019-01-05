//
//  UIViewController+SFLConstraints.h
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController(SFLConstraints)
- (void) setToView:(UIView *)view size:(CGSize)size;
- (void) setupConstraintsOfView:(UIView *)child relativeTO:(UIView *)parent withPaddingFromTop:(CGFloat)height;
@end

