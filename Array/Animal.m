//
//  Animal.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (id)initWithParameters: (NSInteger) age andLife: (NSInteger) life predatorOrNot: (Boolean) isPredator andSpeed: (NSInteger) speed {
    {
        self = [super init];
        if (self) {
            _life = life;
            _isPredator = isPredator;
            _speed = speed;
            _age = age;
            
        }
        return self;
    }
}

- (void) move {
        NSLog(@"I`m going!🚶");
    }


- (instancetype)init {
    self = [super init];
    if (self) {
        _life = 100.f;
        _isPredator = true;
        _speed = 60;
        _age = 4;
        return self;
    }
    
}
@end
