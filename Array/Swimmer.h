//
//  Swimmer.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/27/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@protocol Swimmer <NSObject>

@required
@property (strong, nonatomic) NSString* name;

- (void) swim;

@optional
@property (assign, nonatomic) NSInteger amountOfMedal;


@end
