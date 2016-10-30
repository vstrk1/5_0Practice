//
//  Student.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/28/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Student.h"



@implementation Student


- (instancetype)initWithFname : (NSString* ) fName andLname : (NSString* ) lname andHelloMessage : (NSString* ) helloMsg
{
    self = [super init];
    if (self) {
        _fName = fName;
        _lName = lname;
        _grtMsg = helloMsg;
    }
    return self;
}
- (id) studentInfo {
    NSString* str = [NSString stringWithFormat:@"%@ %@", self.fName, self.lName];
    id result = str;
    
    return result;
}

- (id) sayHello{
    id result = self.grtMsg;
    
    return result;
}


- (NSString *)description {
    NSString *resultstring = [NSString stringWithFormat:@"\r Name of student: %@,\r Last name of student: %@, \r Greeting message: %@, \r", self.fName, self.lName, self.grtMsg];
    
    return resultstring;
    
}



@end
