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
    }
    return self;
}

- (void) taxChanged: (NSNotification*) notification {
    NSLog(@"Tax was changed: %@", notification.userInfo);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
