//
//  UIView+SMNibViews.h
//
//  Created by Jerry Jones on 2/10/13.
//  Copyright (c) 2013 Spaceman Labs, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIView (SMNibViews)

+ (id)viewFromNib;
+ (id)viewFromNibNamed:(NSString *)nibName;

@end
