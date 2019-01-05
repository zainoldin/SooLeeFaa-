//
//  SLFLabel.h
//  SooLeeFaa
//
//  Created by Almas Zainoldin on 1/5/19.
//  Copyright © 2019 Almas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SLFLabel : UILabel
-(instancetype)initWithText:(NSString *)text fontSize:(CGFloat)size;
-(instancetype)initWithText:(NSString *)text fonSize:(CGFloat)size color:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
