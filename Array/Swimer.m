//
//  Swimer.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Swimer.h"

@implementation Swimer

- (void) move {
    NSLog(@"I`m swimming!🏊🏻");
}

- (void) swim {
    NSLog(@"🏊🏻🏊🏻🏊🏻");
}

- (NSInteger) amountOfMedal{
    NSLog(@"I have presubably: %ld medals 😎", _amountOfMedal);
    return _amountOfMedal;
}

@end
