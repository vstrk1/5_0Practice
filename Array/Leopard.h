//
//  Leopard.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/13/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Animal.h"
#import "JumperInterface.h"

@interface Leopard : Animal <JumperInterface>

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat jumpHeight;


@end
