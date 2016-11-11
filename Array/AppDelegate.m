//
//  AppDelegate.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "AppDelegate.h"
#import "LevelTask.h"
#import "Car.h"
#import "AlphaBattleship.h"
#import "Pensioner.h"
#import "CustomAppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) LevelTask *task;
@property (strong, nonatomic) CustomAppDelegate *customDelegate;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.task = [[LevelTask alloc]init];
    [self.task runBloksTask];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
     NSLog(@"✅ Application resign initial notification was called!");
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"✅ Application backgorund initial notification was called!");
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
     NSLog(@"✅ Application foregronud initial notification was called!");
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"✅ Application become active initial notification was called!");
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"✅ Application terminate initial notification was called!");
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
