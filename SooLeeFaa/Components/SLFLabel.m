//
//  SLFLabel.m
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import "SLFLabel.h"
#import "UIFont+Extension.h"

@interface SLFLabel()
@end

@implementation SLFLabel
- (instancetype)initWithText:(NSString *)text fontSize:(CGFloat)size {
    return [self initWithText:text fonSize:size color:[UIColor whiteColor]];
}

- (instancetype)initWithText:(NSString *)text fonSize:(CGFloat)size color:(UIColor *)color {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.translatesAutoresizingMaskIntoConstraints = NO;
    self.text = text;
    self.textAlignment = NSTextAlignmentCenter;
    self.font = [UIFont regularFontWithSize:size];
    self.textColor = color;
    return self;
}
@end
