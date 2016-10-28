//
//  Runners.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/28/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef enum {
    Increddible,
    Normal,
    Slow
}ExplosionType;

@protocol Runners <NSObject>

@required
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat speed;
@property (assign, nonatomic) ExplosionType exploisonType;

- (void) run;

@optional
- (void) takeDoping;

@end
