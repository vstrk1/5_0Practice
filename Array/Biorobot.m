//
//  Biorobot.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/10/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Biorobot.h"

@interface Biorobot()

- (NSInteger) verifyPowerStatus;

@end


@implementation Biorobot

- (id)initWithParameters: (NSString*) name andSex: (NSString*) sex andAge: (NSInteger) age
                andHeigh: (CGFloat) heigh andWeigh: (CGFloat) weigh andTypeOfProthesis: (NSString*) typeOfProthesis
{
    self = [super initWithParameters:name andSex:sex andAge:age andHeigh:heigh andWeigh:weigh];
    if (self) {
        _typeOfProsthesis = typeOfProthesis;
        _powerBalance = 100;
        
    }
    return self;
}


- (NSInteger) verifyPowerStatus {
    if (self.powerBalance < 5) {
        NSLog(@"The power balance is too low for your %@. Please charge the prothesis 🔋", self.typeOfProsthesis);
        return -1;
    }
    return 0;
}

- (void) charge {
    self.powerBalance = 100;
    NSLog(@"Charging...🔌");
    NSLog(@"Done! 😇 You`r current battery is %ld %%", self.powerBalance);
}

- (void) move {
    if (!self.verifyPowerStatus) {
        [super move];
        NSLog(@"I`m fucking going as increddible BIOROBOT!!!🤖");
        self.powerBalance -= 25;
    }
    
}

@end
