//
//  Pensioner.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Pensioner.h"

@implementation Pensioner

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pension = 1200.f;
        NSNotificationCenter *nc =  [NSNotificationCenter defaultCenter];
        [nc addObserver:self selector:@selector(changePension:) name:GovernmentPensionChangeNotification object:nil];
        [nc addObserver:self selector:@selector(averagePriceChange:) name:GovernmentAveragePriceChangeNotification object:nil];
        [nc addObserver:self selector:@selector(appGoHome:) name:UIApplicationDidEnterBackgroundNotification object:nil];
        [nc addObserver:self selector:@selector(appAgain:) name:UIApplicationWillEnterForegroundNotification object:nil];
    }
    return self;
}

#pragma mark - notifications

- (void) appGoHome: (NSNotification*) notification {
    NSLog(@"HOOOOOOOOMEEEEEEEEEE");
}

- (void) appAgain: (NSNotification*) notification {
    NSLog(@"Application again !");
}

- (void) changePension: (NSNotification*) notification {
    NSLog(@"Pension was changed!: %@", notification.userInfo);
    NSNumber *newPension = [notification.userInfo objectForKey:GovernmentPensionUserInfoKey];
    _pension = [newPension floatValue];
}

- (void) averagePriceChange: (NSNotification*) notification {
    NSNumber *averagePrice = [notification.userInfo objectForKey:GovernmentAverageUserInfoKey];
    CGFloat newAveragePrice = [averagePrice floatValue];
    CGFloat currentAveragePrice = [self pension] / 10;
    
    if (newAveragePrice > currentAveragePrice) {
        NSLog(@"Bullshit! What the fucking happened again?");
    } else {
        NSLog(@"Good news! God bless america!");
    }
    
}

#pragma mark - dealloc

- (void)dealloc
{
    NSLog(@"DEALLOC");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
