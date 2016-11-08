//
//  Doctor.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/30/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor
- (instancetype)init
{
    self = [super init];
    if (self) {
        _stackWithPatients = [[NSMutableDictionary alloc]init];
    }
    return self;
}
- (void) patientFeelsNotOk: (Patient*) patient {
    IllOrgan organ = arc4random()%4;
    patient.doctorRate = arc4random()%6;
    [_stackWithPatients setObject:[self returnSickOrgan:organ] forKey:patient.name];
    
    NSLog(@"P: - Hello doctor! I have some troubles with %@! Could you please help me?", [self returnSickOrgan:organ]);
    switch (organ) {
        case Head:
            NSLog(@"D: - Okey dude, just take a pill and you feeling better!");
            [patient takePill];
            break;
        case Hands:
            NSLog(@"D: - What are you drinking before comes to me? Looks not healthy.Give a shot!");
            [patient takeShot];
            break;
        case Leg:
            NSLog(@"D: - Heh, nothing to care. All right.. Next!");
            break;
        case Stomach:
            NSLog(@"D: - I suspect you ate a lot of cheeps. Give a pill.");
            [patient takePill];
            break;
        case Eyes:
            NSLog(@"D: - Just need take a rest. NOthing to care");
        case Heart:
            NSLog(@"D: - BE QUICKLY! THERE IS NEED TO MAKE A SHOT!");
            [patient takeShot];
            break;
        default:
            break;
    }
    
//    if (patient.temperature  < 37.0f || !patient.headAche) {
//        [patient takePill];
//    } else if (patient.temperature > 37.f && patient.temperature < 40.f) {
//        [patient takePill];
//    } else{
//        [patient takeShot];
//    }
}


- (NSString *) returnSickOrgan: (int) sickOrgan {
    switch (sickOrgan) {
        case Head:
            return @"head";
            break;
        case Hands:
            return @"hands";
        case Leg:
            return @"leg";
        case Stomach:
            return @"stomach";
        case Eyes:
            return @"eyes";
        case Heart:
            return @"heart";
        default:
            break;
    }
    return @"something";
}

- (void) generateReport {
//    for (id object in _stackWithPatients) {
//        NSLog(@"Patient %@ came with %@ problem ", object, [object valueForKey:object]);
//    }
    
    NSArray *sortedNames = [_stackWithPatients keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    
    NSLog(@"Doctor report: ");
    for (id objet in sortedNames) {
        NSLog(@"Patient %@ came with %@ problem ", objet, [_stackWithPatients objectForKey:objet]);
    }
}

@end
