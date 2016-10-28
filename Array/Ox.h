//
//  Ox.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Animal.h"
#import "Swimmer.h"

@interface Ox : Animal <Swimmer>

@property (strong, nonatomic) NSString* name;

- (void) swim;


@end
