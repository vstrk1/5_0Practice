//
//  Runner.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Human.h"
#import "Runners.h"

@interface Runner : Human <Runners>

@property (assign, nonatomic) CGFloat speed;
@property (assign, nonatomic) ExplosionType exploisonType;

@end
