//
//  Human.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Human.h"

@implementation Human

- (id)initWithParameters: (NSString*) name andSex: (NSString*) sex andAge: (NSInteger) age
                andHeigh: (CGFloat) heigh andWeigh: (CGFloat) weigh
{
    self = [super init];
    if (self) {
        _name = name;
        _sex = sex;
        _age = age;
        _heigh = heigh;
        _weigh = weigh;
        
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Ivan";
        _sex = @"M";
        _age = 25;
        _heigh = 178.8;
        _weigh = 80.4;
    }
    return self;
}

- (void) move {
    NSLog(@"I`m going!🚶");
}

@end