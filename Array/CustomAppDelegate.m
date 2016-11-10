//
//  CustomAppDelegate.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/10/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "CustomAppDelegate.h"
#import "AppDelegate.h"

@implementation CustomAppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicatioForegronud:)
                                                     name:UIApplicationWillEnterForegroundNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResign:)
                                                     name:UIApplicationWillResignActiveNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicatioBecomeActive:)
                                                     name:UIApplicationDidBecomeActiveNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationTerminate:)
                                                     name:UIApplicationWillTerminateNotification object:nil];
        
    }
    return self;
}

- (void) applicatioForegronud: (NSNotification*) notification {
    NSLog(@"💠 Application foregronud custom notification was called!");
}

- (void) applicationEnterBackground: (NSNotification*) notification {
    NSLog(@"💠 Application backgorund custom notification was called!");
}

- (void) applicationWillResign: (NSNotification*) notification {
    NSLog(@"💠 Application resign custom notification was called!");
}

- (void) applicatioBecomeActive: (NSNotification*) notification {
    NSLog(@"💠 Application become active custom notification was called!");
}

- (void) applicationTerminate: (NSNotification*) notification {
    NSLog(@"💠 Application terminate custom notification was called!");
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}



@end
