//
//  RNPushOrReplaceSegue.m
//  RNExternStoryboard
//
//  Created by Rafael Nobre on 01/04/14.
//  Copyright (c) 2014 Rafael Nobre. All rights reserved.
//

#import "RNPushOrReplaceSegue.h"

@implementation RNPushOrReplaceSegue

-(void)perform {
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        UISplitViewController *split = ((UIViewController*)self.sourceViewController).splitViewController;
        if ([split.viewControllers[1] isKindOfClass:[UINavigationController class]]) {
            UINavigationController *nav = split.viewControllers[1];
            nav.viewControllers = @[self.destinationViewController];
        }
        else {
            UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:self.destinationViewController];
            split.viewControllers = @[split.viewControllers[0], nav];
        }
    }
    else {
        UINavigationController *nav = ((UIViewController*)self.sourceViewController).navigationController;
        [nav pushViewController:self.destinationViewController animated:YES];
    }
}

@end




