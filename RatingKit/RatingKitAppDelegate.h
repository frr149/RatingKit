//
//  RatingKitAppDelegate.h
//  RatingKit
//
//  Created by Fernando Rodríguez Romero on 7/14/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RatingKitViewController;

@interface RatingKitAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet RatingKitViewController *viewController;

@end
