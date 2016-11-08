//
//  Patient.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/30/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PatientDelegate.h"

@protocol PatientDelegate;

typedef enum FeelingState {
    BETTER,
    WORSE
} FeelingState;

typedef enum IllOrgan {
    Head,
    Hands,
    Leg,
    Stomach,
    Eyes,
    Heart
}IllOrgan;

extern NSString * const FormatType_toString[];


@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) BOOL headAche;
@property (weak, nonatomic) id <PatientDelegate> delegate;
@property (assign, nonatomic) FeelingState feelingState;
@property (assign, nonatomic) NSInteger doctorRate;


- (void) takePill;
- (void) takeShot;
- (void) feelingWorse;

- (void) stayWorse;
- (void) stayBetter;

@end


@protocol PatientDelegate <NSObject>

@required

- (void) patientFeelsNotOk: (Patient*) patient;



@end
