//
//  Patient.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/30/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Patient.h"

@implementation Patient


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


@end
