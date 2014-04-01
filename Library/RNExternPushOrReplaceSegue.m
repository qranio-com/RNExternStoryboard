//
//  RNExternPushOrReplaceSegue.m
//  RNExternStoryboard
//
//  Created by Rafael Nobre on 01/04/14.
//  Copyright (c) 2014 Rafael Nobre. All rights reserved.
//

#import "RNExternPushOrReplaceSegue.h"
#import "RNExternRedirect.h"

@implementation RNExternPushOrReplaceSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    return [super initWithIdentifier:identifier source:source destination:[RNExternRedirect redirectFromViewController:destination]];
}

@end
