//
//  Znahar.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/7/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Znahar.h"

@implementation Znahar

- (void) patientFeelsNotOk: (Patient*) patient {
    if (patient.temperature > 36.f) {
        NSLog(@"There is need to drink some alchogol with addle egg!");
    }
    if (patient.headAche) {
        NSLog(@"Just one portion of pickle in ass for getting better!");
    }
    if (patient.feelingState == WORSE) {
        NSLog(@"Just for practice take a pill, boy");
        [patient takePill];
    }
    
}

@end
