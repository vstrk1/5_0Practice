//
//  Businessman.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Businessman.h"

@implementation Businessman

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(taxChanged:) name:GovernmentTaxValueChangeNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(averagePriceChange:) name:GovernmentAveragePriceChangeNotification object:nil];
        _averagePriceddd = 100;
    }
    return self;
}

- (void) taxChanged: (NSNotification*) notification {
    NSLog(@"Tax was changed: %@", notification.userInfo);
}

- (void) averagePriceChange: (NSNotification*) notification {
    NSNumber *newAveragePrice = [notification.userInfo objectForKey:GovernmentAverageUserInfoKey];
    
    if ([newAveragePrice floatValue] < [self averagePriceddd]) {
        NSLog(@"NIIIIIIICE!");
    } else {
        NSLog(@"Not nice");
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
