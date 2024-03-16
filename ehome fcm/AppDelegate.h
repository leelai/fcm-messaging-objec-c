//
//  AppDelegate.h
//  ehome fcm
//
//  Created by leelai on 2024/3/16.
//

#import <UIKit/UIKit.h>
@import FirebaseCore;
@import FirebaseMessaging;

@protocol FIRMessagingDelegate;

@interface AppDelegate : UIResponder<UIApplicationDelegate, FIRMessagingDelegate>


@end

