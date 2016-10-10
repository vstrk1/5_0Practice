//
//  Human.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/9/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* sex;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat heigh;
@property (assign, nonatomic) CGFloat weigh;

- (id)initWithParameters: (NSString*) name andSex: (NSString*) sex andAge: (NSInteger) age
                andHeigh: (CGFloat) heigh andWeigh: (CGFloat) weigh;

- (void) move;

@end
