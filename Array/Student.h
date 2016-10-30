//
//  Student.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/28/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (strong, nonatomic) NSString *fName;
@property (strong, nonatomic) NSString* lName;
@property (strong, nonatomic) NSString* grtMsg;

- (instancetype)initWithFname : (NSString* ) fName andLname : (NSString* ) lname andHelloMessage : (NSString* ) helloMsg;

- (id) studentInfo;
- (id) sayHello;


@end
