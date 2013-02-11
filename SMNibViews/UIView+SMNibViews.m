//
//  UIView+SMNibViews.m
//
//  Created by Jerry Jones on 2/10/13.
//  Copyright (c) 2013 Spaceman Labs, Inc. All rights reserved.
//

#import "UIView+SMNibViews.h"
#import "NSObject+SMNibViews.h"

@implementation UIView (SMNibViews)

+ (id)viewFromNib
{
	return [self viewFromNibNamed:NSStringFromClass([self class])];
}

+ (id)viewFromNibNamed:(NSString *)name
{
	NSObject *owner = [[NSObject alloc] init];
	NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:name owner:owner options:nil];
	UIView *view = owner.mainViewFromNIB;
	if (nil != view) {
		return view;
	}
	
	for (id object in nibObjects) {
		if ([object isKindOfClass:[self class]]) {
			return object;
		}
	}
	
	NSString *localizedStringFormat = NSLocalizedString(@"Can not load view for class: %@ - nib: %@. Outlet not hooked up for mainNIBView, and nib contains no top level view of the expected class.", nil);
	NSString *excpetionMessage = [NSString stringWithFormat:localizedStringFormat, NSStringFromClass([self class]), name];
	
	[[NSException exceptionWithName:NSInternalInconsistencyException
							 reason:excpetionMessage
						   userInfo:nil] raise];
	
	return nil;
}

@end
