//
//  Jumper.h
//  Array
//
//  Created by Stuparenko Vladyslav on 10/28/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "Human.h"
#import "JumperInterface.h"

@interface Jumper : Human <JumperInterface>

@property (assign, nonatomic) CGFloat jumpHeight;
@property (strong, nonatomic) NSString* dopingType;

@end
