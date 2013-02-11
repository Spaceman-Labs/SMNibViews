//
//  NSObject+SMNibViews.m
//
//  Created by Jerry Jones on 2/10/13.
//  Copyright (c) 2013 Spaceman Labs, Inc. All rights reserved.
//

#import "NSObject+SMNibViews.h"
#import <objc/runtime.h>

static NSString *SMNibViewsAssociationKey = @"com.spacemanlabs.smnibviews";

@implementation NSObject (SMNibView)

- (UIView *)mainViewFromNIB
{
	return objc_getAssociatedObject(self, &SMNibViewsAssociationKey);
}

- (void)setMainViewFromNIB:(UIView *)mainViewFromNIB
{
	objc_setAssociatedObject(self, &SMNibViewsAssociationKey, mainViewFromNIB, OBJC_ASSOCIATION_RETAIN);
}

@end
