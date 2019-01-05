//
//  SLFButton.m
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import "SLFButton.h"
#import "UIColor+HexString.h"
#import "UIFont+Extension.h"

@interface SLFButton()
@property (nonatomic) CAGradientLayer *gradientLayer;
@end

@implementation SLFButton

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    
    if (!self) {
        return nil;
    }
    
    [self setTitle:title forState:UIControlStateNormal];
    self.backgroundColor = [UIColor kVioletColor];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    self.titleLabel.font = [UIFont regularFontWithSize:22];
    self.titleLabel.textColor = [UIColor whiteColor];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    return self;
}
@end
