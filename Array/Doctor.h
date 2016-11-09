//
//  Doctor.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/30/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Government.h"

@interface Doctor : NSObject<PatientDelegate>

- (void) generateReport;

@property (strong, nonatomic) NSMutableDictionary* stackWithPatients;


#pragma mark  - PatientDelegate

@end
