//
//  UIStoryboard+DeviceSpecificStoryboard.m
//  RNExternStoryboard
//
//  Created by Rafael Nobre on 27/03/14.
//  Copyright (c) 2014 Rafael Nobre. All rights reserved.
//

#import "UIStoryboard+DeviceSpecificStoryboard.h"

@implementation UIStoryboard (DeviceSpecificStoryboard)

+ (UIStoryboard*)deviceSpecificStoryboardWithName:(NSString*)sbName {
    NSString *deviceSpecificName = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ? [sbName stringByAppendingString:@"-iPad"] : sbName;
    UIStoryboard *result = nil;
    @try {
        result = [UIStoryboard storyboardWithName:deviceSpecificName bundle:nil];
    }
    @catch (NSException *exception) {
        //se nao achou uma sb de ipad, tento obter uma generica
        if (!result && deviceSpecificName != sbName) result = [UIStoryboard storyboardWithName:sbName bundle:nil];
    }
    return result;
}


@end
