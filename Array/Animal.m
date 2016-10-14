//
//  Animal.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (id)initWithParameters: (NSInteger) age andLife: (NSInteger) life andSpeed: (NSInteger) speed {
    {
        self = [super init];
        if (self) {
            _life = life;
            _speed = speed;
            _age = age;
            _isPredator = false;
        }
        return self;
    }
}

- (void) move {
        NSLog(@"I`m going right now ! 🐾 🐾");
    }


- (instancetype)init
{
    self = [super init];
    if (self) {
        _life = 100.f;
        _isPredator = false;
        _speed = 10;
        _age = 4;
    }
    return self;
}
@end
