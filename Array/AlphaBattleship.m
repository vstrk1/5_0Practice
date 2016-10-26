//
//  AlphaBattleship.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/26/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "AlphaBattleship.h"

@interface AlphaBattleship()
@property (assign, nonatomic) CGRect figure;
@property (assign, nonatomic) CGRect centrOfFigure;
@property (assign, nonatomic) NSInteger count;

- (CGPoint) generateShot;
@end



@implementation AlphaBattleship

@synthesize figure;
@synthesize count;
@synthesize centrOfFigure;


- (instancetype)init
{
    self = [super init];
    if (self) {
        count = 1;
        centrOfFigure = CGRectMake(5, 4, 3, 3);
        
    }
    return self;
}
- (CGPoint) generateShot {
    return CGPointMake((arc4random()%11), (arc4random()%11));
}

- (void) fire {
    CGPoint one = [self generateShot];
    CGPoint two = [self generateShot];
    CGPoint three = [self generateShot];
    
    NSArray *stackOfShots = [NSArray arrayWithObjects:[NSValue valueWithCGPoint:one], [NSValue valueWithCGPoint:two],
                             [NSValue valueWithCGPoint:three], nil];
    
    for (NSValue *shot in stackOfShots) {
        CGPoint point = [shot CGPointValue];
        if (CGRectContainsPoint(centrOfFigure, point)) {
            NSLog(@"Shot #%ld (%0.f, %0.f) hit right to the center!!", count, point.x, point.y);
            
        } else {
            NSLog(@"Shot #%ld (%0.f, %0.f)", count, point.x, point.y);
            
        }
        count+= 1;
    }
    
}

@end
