//
//  SMViewController.m
//  SMNibViews
//
//  Created by Jerry Jones on 2/10/13.
//  Copyright (c) 2013 Spaceman Labs, Inc. All rights reserved.
//

#import "SMViewController.h"
#import "SMNibViews.h"
#import "SMOutletNibView.h"
#import "SMClassNibView.h"

@interface SMViewController ()

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.container1 addSubview:[SMOutletNibView viewFromNib]];
	[self.container2 addSubview:[SMClassNibView viewFromNib]];
	[self.container3 addSubview:[SMOutletNibView viewFromNibNamed:@"SMOutletNibViewAlternate"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
