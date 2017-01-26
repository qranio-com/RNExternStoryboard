//
//  RNExternalModalNoAnimationSegue.m
//  Pods
//
//  Created by Leonir Alves on 1/24/17.
//
//

#import "RNExternalModalNoAnimationSegue.h"

@implementation RNExternalModalNoAnimationSegue

- (void)perform {
//    [self.sourceViewController setDefinesPresentationContext:NO];
//    [self.destinationViewController setModalPresentationStyle: UIModalPresentationOverCurrentContext];
    [self.sourceViewController presentViewController:self.destinationViewController animated:NO completion:nil];
}

@end
