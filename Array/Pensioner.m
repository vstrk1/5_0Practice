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
        NSNotificationCenter *nc =  [NSNotificationCenter defaultCenter];
        [nc addObserver:self selector:@selector(changePension:) name:GovernmentPensionChangeNotification object:nil];
    }
    return self;
}

- (void) changePension: (NSNotification*) notification {
    NSLog(@"Pension was changed!: %@", notification.userInfo);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
