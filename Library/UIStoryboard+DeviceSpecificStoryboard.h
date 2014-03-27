//
//  UIStoryboard+DeviceSpecificStoryboard.h
//  RNExternStoryboard
//
//  Created by Rafael Nobre on 27/03/14.
//  Copyright (c) 2014 Rafael Nobre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (DeviceSpecificStoryboard)

/**
 *  Loads a Storyboard for either iPhone or iPad (-iPad sufix)
 *  @param sbName name of the storyboard to load
 *  @return UIStoryboard loaded
 */
+ (UIStoryboard*)deviceSpecificStoryboardWithName:(NSString*)sbName;

@end
