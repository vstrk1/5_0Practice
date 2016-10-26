//
//  Car.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/20/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Car.h"

@implementation Car


- (NSString*) convertToStringEnumValue: (Company) withCompany; {
    NSString *result = nil;
    
    switch(withCompany) {
        case Toyota:
            result = @"Toyota";
            break;
        case Nissan:
            result = @"Nissan";
            break;
        case BMW:
            result = @"BMW";
            break;
        case Audi:
            result = @"Audi";
            
        default:
            result = @"untitled";
    }
    
    return result;
}

@end
