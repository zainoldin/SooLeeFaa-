//
//  UIColor+HexString.h
//  SooLeeFaa
//
//  Created by Almas on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(HexString)
+ (UIColor *) kVioletColor;
+ (UIColor *) kDarkBlueColor;
+ (UIColor *) kBackgroundBlueColor;
+ (UIColor *) kCoralColor;
+ (UIColor *) kEmeralGreenColor;

+ (UIColor *) colorWithHexString:(NSString *)hexString;
+ (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length;
@end
