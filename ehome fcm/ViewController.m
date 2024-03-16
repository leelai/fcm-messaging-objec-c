//
//  ViewController.m
//  ehome fcm
//
//  Created by leelai on 2024/3/16.
//

#import "ViewController.h"
@import FirebaseCore;
@import FirebaseMessaging;

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)btn:(id)sender {
    [[FIRMessaging messaging] tokenWithCompletion:^(NSString *token, NSError *error) {
      if (error != nil) {
        NSLog(@"Error getting FCM registration token: %@", error);
      } else {
        NSLog(@"FCM registration token: %@", token);
        self.token.text = token;
        
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = token;
      }
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
