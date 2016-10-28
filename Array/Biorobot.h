//
//  Biorobot.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/10/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Human.h"
#import "JumperInterface.h"
#import "Swimmer.h"
#import "Runners.h"

@interface Biorobot : Human <JumperInterface, Swimmer, Runners>


@property (strong, nonatomic) NSString* typeOfProsthesis;
@property (assign, nonatomic) NSInteger powerBalance;
@property (assign, nonatomic) CGFloat jumpHeight;
@property (assign, nonatomic) CGFloat speed;
@property (assign, nonatomic) ExplosionType exploisonType;

- (void) charge;

- (id)initWithParameters: (NSString*) name andSex: (NSString*) sex andAge: (NSInteger) age
                andHeigh: (CGFloat) heigh andWeigh: (CGFloat) weigh andTypeOfProthesis: (NSString*) typeOfProthesis;
@end
