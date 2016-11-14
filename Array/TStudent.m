//
//  TStudent.m
//  Array
//
//  Created by Stuparenko Vladyslav on 11/12/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "TStudent.h"
#import <QuartzCore/CAAnimation.h>

@interface TStudent()
+ (dispatch_queue_t) initQueue;
@end

@implementation TStudent
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", [self name]];
}

+ (dispatch_queue_t) initQueue {
    static dispatch_once_t predicate;
    static dispatch_queue_t studentsQueue;
    dispatch_once(&predicate, ^{
        studentsQueue = dispatch_queue_create("com.custmCueue", DISPATCH_QUEUE_CONCURRENT_WITH_AUTORELEASE_POOL);
    });
    return studentsQueue;
};

// Perform results using for find necessary value and catch time for any thread.
- (void) performResults:(NSDictionary*) data {
    [[NSThread currentThread] setName:[self description]];
    NSLog(@"%@ started", [NSThread currentThread]);
    NSInteger startTime = CACurrentMediaTime();
    NSInteger rightAnswer = [[data objectForKey:@"Answer"] integerValue];
    NSInteger range = [[data objectForKey:@"Range"] integerValue];
    NSInteger supposedAnswer;
    
    for (; supposedAnswer != rightAnswer; supposedAnswer = arc4random()%range);
    NSLog(@"%@: Found!!! This is %ld. It takes %lg seconds", [self description], supposedAnswer, (CACurrentMediaTime()-startTime));
}

// Run Perform results using Invocation operation
- (void) guessAnswerI:(NSInteger) answer andRange:(NSInteger) range {
    NSOperationQueue *nsOperationQueue = [[NSOperationQueue alloc] init];
    NSDictionary* data = [[NSDictionary alloc] initWithObjectsAndKeys:
                          [NSNumber numberWithInteger:answer], @"Answer", [NSNumber numberWithInteger:range], @"Range", nil];
    NSInvocationOperation* invoc = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(performResults:) object:data];
    [nsOperationQueue addOperation:invoc];
};


// Run perform results using Block operation
- (void) guessAnswerB:(NSInteger) answer andRange:(NSInteger) range {
    NSOperationQueue *nsOperationQueue = [[NSOperationQueue alloc] init];
    NSBlockOperation* operationBlock = [NSBlockOperation blockOperationWithBlock:^{
        __weak TStudent* tempStudent = self;
        [[NSThread currentThread] setName:[tempStudent description]];
        NSLog(@"%@ started", [NSThread currentThread]);
        NSInteger startTime = CACurrentMediaTime();
        NSInteger supposedAnswer;
        
        for (; supposedAnswer != answer; supposedAnswer = arc4random()%range);
        NSLog(@"%@: Found!!! This is %ld. It takes %lg seconds", [tempStudent description], supposedAnswer, (CACurrentMediaTime() - startTime));
    }];
    [nsOperationQueue addOperation:operationBlock];
};

/* Run perform results using GCD
*/
- (void) guessAnswerG:(NSInteger) answer andRange:(NSInteger) range {
    //dispatch_queue_t mQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async([TStudent initQueue], ^{
        __weak TStudent* tempStudent = self;
        [[NSThread currentThread] setName:[tempStudent description]];
        NSLog(@"%@ started", [NSThread currentThread]);
        NSInteger startTime = CACurrentMediaTime();
        NSInteger supposedAnswer;
        
        for (; supposedAnswer != answer; supposedAnswer = arc4random()%range);
        NSLog(@"%@: Found!!! This is %ld. It takes %lg seconds", [tempStudent description], supposedAnswer, (CACurrentMediaTime() - startTime));

    });
};

@end
