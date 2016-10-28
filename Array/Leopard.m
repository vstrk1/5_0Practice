//
//  Leopard.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Leopard.h"

@implementation Leopard

- (id) initWithParameters:(NSInteger)age andLife:(NSInteger)life andSpeed:(NSInteger)speed {
    {
        self = [super initWithParameters:age andLife:life andSpeed:speed];
        if (self) {
            [super setIsPredator:true];
        }
        return self;
    }
}

- (void) jump {
    NSLog(@"Prepare to death, bitch 🐯");
}
- (void) move {
    NSLog(@"Meeeeeoww!! I want to eat you!! 🐆");
}


@end
