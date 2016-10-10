//
//  Biorobot.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/10/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Human.h"

@interface Biorobot : Human


@property (strong, nonatomic) NSString* typeOfProsthesis;
@property (assign, nonatomic) NSInteger powerBalance;

- (void) charge;

@end
