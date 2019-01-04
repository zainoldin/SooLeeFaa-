//
//  UIFont+Extension.m
//  SooLeeFaa
//
//  Created by Almas on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIFont+Extension.h"

static NSString *const kRegularFontName = @"04b19";

@implementation UIFont(Extension)

+ (instancetype)regularFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:kRegularFontName size:size];
}

@end
