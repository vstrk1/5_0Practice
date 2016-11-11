//
//  Patient.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/30/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Patient.h"

@implementation Patient


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self performSelector:@selector(feelingWorseTreatmentSelf) withObject:nil afterDelay:arc4random()%4 + 3];
    }
    return self;
}

NSString * const FormatType_toString[] = {
    [BETTER] = @"BETTER",
    [WORSE] = @"WORSE"
};

- (void) stayWorse {
    NSLog(@"%@ staying worse", self.name);
    self.feelingState = WORSE;
}
- (void) stayBetter {
    NSLog(@"%@ staying better", self.name);
    self.feelingState = BETTER;
}

- (void) takePill {
    NSLog(@"%@ taking pill", self.name);
    BOOL feelingState = arc4random() % 2;
    
    if (feelingState) {
        [self stayBetter];
    } else {
        [self stayWorse];
        [self takeShot];
    }
    
}

- (void) takeShot {
    NSLog(@"%@ taking shot", self.name);
    [self stayBetter];
}

- (void) feelingWorse {
    NSLog(@"I feeling not ok.. maybe need to go to the doctor");
    NSLog(@"I going to the %@!", NSStringFromClass([self.delegate class]));
    [self.delegate patientFeelsNotOk:self];
}


- (void) feelingWorseTreatmentSelf{
    NSLog(@"I feeling not ok.. there is need to do something..");
    decisionIllBlock(self);
}
void (^decisionIllBlock) (Patient*) = ^(Patient* patient) {
    if (patient.temperature  < 37.0f || !patient.headAche) {
        [patient takePill];
    } else if (patient.temperature > 37.f && patient.temperature < 40.f) {
        [patient takePill];
    } else{
        [patient takeShot];
    }
};


@end
