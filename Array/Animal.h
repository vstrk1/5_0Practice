//
//  Animal.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) NSInteger speed;
@property (assign, nonatomic) NSInteger life;
@property (assign, nonatomic) Boolean isPredator;


- (id)initWithParameters: (NSInteger) age andLife: (NSInteger) life andSpeed: (NSInteger) speed;

- (void) move;


@end
