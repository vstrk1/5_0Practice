//
//  JumperInterface.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/28/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@protocol JumperInterface <NSObject>


@required
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat jumpHeight;

- (void) jump;

@optional
@property (strong, nonatomic) NSString* dopingType;

- (void) takeDoping;

@end
