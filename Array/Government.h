//
//  Government.h
//  Array
//
//  Created by Stuparenko Vladyslav on 11/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString* const GovernmentTaxValueChangeNotification;
extern NSString* const GovernmentSalaryValueChangeNotification;
extern NSString* const GovernmentPensionChangeNotification;
extern NSString* const GovernmentAveragePriceChangeNotification;

extern NSString* const GovernmentTaxUserInfoKey;
extern NSString* const GovernmentSalaryUserInfoKey;
extern NSString* const GovernmentPensionUserInfoKey;
extern NSString* const GovernmentAverageUserInfoKey;

@interface Government : NSObject

@property (assign, nonatomic) CGFloat tax;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;


@end
