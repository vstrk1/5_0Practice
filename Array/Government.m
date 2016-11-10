//
//  Government.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Government.h"
#import "LevelTask.h"

NSString* const GovernmentTaxValueChangeNotification = @"GovernmentTaxValueChangeNotification";
NSString* const GovernmentSalaryValueChangeNotification = @"GovernmentSalaryValueChangeNotification";
NSString* const GovernmentPensionChangeNotification = @"GovernmentPensionChangeNotification";
NSString* const GovernmentAveragePriceChangeNotification = @"GovernmentAveragePriceChangeNotification";

NSString* const GovernmentTaxUserInfoKey = @"GovernmentTaxUserInfoKey";
NSString* const GovernmentSalaryUserInfoKey = @"GovernmentSalaryUserInfoKey";
NSString* const GovernmentPensionUserInfoKey = @"GovernmentPensionUserInfoKey";
NSString* const GovernmentAverageUserInfoKey = @"GovernmentAverageUserInfoKey";


@implementation Government

- (instancetype)init
{
    self = [super init];
    if (self) {
        _tax = 10.f;
        _salary = 2000.f;
        _pension = 1200.50f;
        _averagePrice = 100.f;
    }
    return self;
}

- (void) setTax:(CGFloat)tax {
    _tax = tax;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:tax] forKey:GovernmentTaxUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentTaxValueChangeNotification
                                                        object:nil userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:GovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentSalaryValueChangeNotification
                                                        object:nil userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:GovernmentPensionUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentPensionChangeNotification
                                                        object:nil userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:GovernmentAverageUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentAveragePriceChangeNotification
                                                        object:nil userInfo:dictionary];
}



@end
