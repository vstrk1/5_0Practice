//
//  Swimer.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Swimmer.h"

@interface Swimer : Human <Swimmer>


@property (assign, nonatomic) NSInteger amountOfMedal;


@end
