//
//  TStudent.h
//  Array
//
//  Created by Stuparenko Vladyslav on 11/12/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TStudent : NSObject

@property (strong, nonatomic) NSString* name;

- (void) guessAnswerI: (NSInteger) rightAnswer andRange: (NSInteger) range;
- (void) guessAnswerB:(NSInteger) answer andRange:(NSInteger) range;
- (void) guessAnswerG:(NSInteger) answer andRange:(NSInteger) range;

@end
