//
//  SMAppDelegate.h
//  SMNibViews
//
//  Created by Jerry Jones on 2/10/13.
//  Copyright (c) 2013 Spaceman Labs, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SMViewController;

@interface SMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SMViewController *viewController;

@end
