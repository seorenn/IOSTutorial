//
//  AppDelegate.h
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UINavigationController *_nav;
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, readonly) UINavigationController *nav;

@end
