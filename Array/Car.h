//
//  Car.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/20/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum Transmission {
    Automatic,
    Mechanic
}Transmission;

typedef enum{
    Nissan,
    Audi,
    BMW,
    Toyota
}Company;


@interface Car : NSObject

@property (assign, nonatomic) Transmission type;
@property (assign, nonatomic) NSInteger hourses;
@property (strong, nonatomic) NSString *model;
@property (assign, nonatomic) Company nameOfCompany;

- (NSString*) convertToStringEnumValue: (Company) withCompany;

@end
