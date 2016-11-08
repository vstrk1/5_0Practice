//
//  LevelTask.m
//  Array
//
//  Created by Stuparenko Vladyslav on 10/14/16.
//  Copyright © 2016 Stuparenko Vladyslav. All rights reserved.
//

#import "LevelTask.h"
#import "Human.h"
#import "Runner.h"
#import "Cycler.h"
#import "Swimer.h"
#import "Biorobot.h"
#import "Animal.h"
#import "Leopard.h"
#import "Ox.h"
#import "Jumper.h"
#import "Student.h"
#import "Patient.h"
#import "Doctor.h"
#import "Znahar.h"

@implementation LevelTask

+ (void) runLearnerTask {
    Human* defaultHuman = [[Human alloc] initWithParameters:@"Joseph" andSex:@"M" andAge:21 andHeigh:178.f andWeigh:77.f];
    Runner* runner = [[Runner alloc] initWithParameters:@"Julia" andSex:@"F" andAge:28 andHeigh:166.6f andWeigh:54.3f];
    Cycler* cycler = [[Cycler alloc] initWithParameters:@"Yaroslav" andSex:@"M" andAge:29 andHeigh:179.22f andWeigh:70.f];
    Swimer* swimer = [[Swimer alloc] initWithParameters:@"Ustas" andSex:@"M" andAge:45 andHeigh:198.4f andWeigh:122.5f];
    Biorobot* robot = [[Biorobot alloc] initWithParameters:@"Angela" andSex:@"F" andAge:40 andHeigh:164.4f andWeigh:44.f andTypeOfProthesis:@"Hand"];
    
    NSArray* stackOfPeoples = [NSArray arrayWithObjects:defaultHuman, runner, cycler, swimer, robot, nil];
    for (Human* human in stackOfPeoples) {
        NSLog(@"__________________________");
        NSLog(@"Name: %@", human.name);
        NSLog(@"Sex: %@", human.sex);
        NSLog(@"Age: %ld", human.age);
        NSLog(@"Heigh: %.01f", human.heigh);
        NSLog(@"Weigh: %.01f", human.weigh);
        [human move];
        if ([human isKindOfClass:[Biorobot class]]) {
            Biorobot* tempRobot = (Biorobot* )human;
            NSLog(@"Current battery: %ld%%", tempRobot.powerBalance);
        }
    }
}

+ (void) runMaserTask {
    Human* defaultHuman = [[Human alloc] initWithParameters:@"Joseph" andSex:@"M" andAge:21 andHeigh:178.f andWeigh:77.f];
    Runner* runner = [[Runner alloc] initWithParameters:@"Julia" andSex:@"F" andAge:28 andHeigh:166.6f andWeigh:54.3f];
    Cycler* cycler = [[Cycler alloc] initWithParameters:@"Yaroslav" andSex:@"M" andAge:29 andHeigh:179.22f andWeigh:70.f];
    Swimer* swimer = [[Swimer alloc] initWithParameters:@"Ustas" andSex:@"M" andAge:45 andHeigh:198.4f andWeigh:122.5f];
    Biorobot* robot = [[Biorobot alloc] initWithParameters:@"Angela" andSex:@"F" andAge:40 andHeigh:164.4f andWeigh:44.f andTypeOfProthesis:@"Hand"];
    Animal* defaultAnimal = [[Animal alloc]initWithParameters:12 andLife:100 andSpeed:10];
    Leopard* leopard = [[Leopard alloc]initWithParameters:4 andLife:100 andSpeed:99];
    Ox* ox = [[Ox alloc]initWithParameters:19 andLife:100 andSpeed:4];
    
    
    NSArray* stackOfObjects = [NSArray arrayWithObjects:defaultHuman, runner, cycler, swimer, robot, defaultAnimal, leopard, ox, nil];
    for (NSObject* object in stackOfObjects) {
        NSLog(@"__________________________");
        NSLog(@"%@", NSStringFromClass([object class]));
        if ([object isKindOfClass:[Human class]]) {
            Human* human = (Human* )object;
            NSLog(@"Name: %@", human.name);
            NSLog(@"Sex: %@", human.sex);
            NSLog(@"Age: %ld", human.age);
            NSLog(@"Heigh: %.01f", human.heigh);
            NSLog(@"Weigh: %.01f", human.weigh);
            [human move];
            if ([human isKindOfClass:[Biorobot class]]) {
                Biorobot* tempRobot = (Biorobot* )human;
                NSLog(@"Current battery: %ld%%", tempRobot.powerBalance);
            }
        }
        if ([object isKindOfClass:[Animal class]]) {
            Animal* animal = (Animal* )object;
            NSLog(@"Age: %ld", animal.age);
            NSLog(@"%s", animal.isPredator ? "Predator" : "Herbivorous");
            NSLog(@"Speed: %ld", animal.speed);
            NSLog(@"Life: %ld", animal.life);
            [animal move];
        }
    }
}

+ (void) runStarTask {
    Human* defaultHuman = [[Human alloc] initWithParameters:@"Joseph" andSex:@"M" andAge:21 andHeigh:178.f andWeigh:77.f];
    Runner* runner = [[Runner alloc] initWithParameters:@"Julia" andSex:@"F" andAge:28 andHeigh:166.6f andWeigh:54.3f];
    Cycler* cycler = [[Cycler alloc] initWithParameters:@"Yaroslav" andSex:@"M" andAge:29 andHeigh:179.22f andWeigh:70.f];
    Swimer* swimer = [[Swimer alloc] initWithParameters:@"Ustas" andSex:@"M" andAge:45 andHeigh:198.4f andWeigh:122.5f];
    Biorobot* robot = [[Biorobot alloc] initWithParameters:@"Angela" andSex:@"F" andAge:40 andHeigh:164.4f andWeigh:44.f andTypeOfProthesis:@"Hand"];
    Animal* defaultAnimal = [[Animal alloc]initWithParameters:12 andLife:100 andSpeed:10];
    Leopard* leopard = [[Leopard alloc]initWithParameters:4 andLife:100 andSpeed:99];
    Ox* ox = [[Ox alloc]initWithParameters:19 andLife:100 andSpeed:4];
    
    
    NSArray* stackOfpeoples = [NSArray arrayWithObjects:defaultHuman, runner, cycler, swimer, robot, nil];
    NSArray* stackOfAnimals = [NSArray arrayWithObjects:defaultAnimal, leopard, ox, nil];
    
    for (int i = 0; i < [stackOfpeoples count] + [stackOfAnimals count]; i++) {
        if (i < [stackOfpeoples count]) {
            Human* human = [stackOfpeoples objectAtIndex:i];
            NSLog(@"__________________________");
            NSLog(@"Name: %@", human.name);
            NSLog(@"Sex: %@", human.sex);
            NSLog(@"Age: %ld", human.age);
            NSLog(@"Heigh: %.01f", human.heigh);
            NSLog(@"Weigh: %.01f", human.weigh);
            [human move];
            if ([human isKindOfClass:[Biorobot class]]) {
                Biorobot* tempRobot = (Biorobot* )human;
                NSLog(@"Current battery: %ld%%", tempRobot.powerBalance);
            }
        }
        if (i < [stackOfAnimals count]) {
            Animal* animal = [stackOfAnimals objectAtIndex:i];
            NSLog(@"__________________________");
            NSLog(@"%@", NSStringFromClass([animal class]));
            NSLog(@"Age: %ld", animal.age);
            NSLog(@"%s", animal.isPredator ? "Predator" : "Herbivorous");
            NSLog(@"Speed: %ld", animal.speed);
            NSLog(@"Life: %ld", animal.life);
            [animal move];
        }
    }
}

+ (void) runSupermanTask {
    Human* defaultHuman = [[Human alloc] initWithParameters:@"Joseph" andSex:@"M" andAge:21 andHeigh:178.f andWeigh:77.f];
    Runner* runner = [[Runner alloc] initWithParameters:@"Julia" andSex:@"F" andAge:28 andHeigh:166.6f andWeigh:54.3f];
    Cycler* cycler = [[Cycler alloc] initWithParameters:@"Yaroslav" andSex:@"M" andAge:29 andHeigh:179.22f andWeigh:70.f];
    Swimer* swimer = [[Swimer alloc] initWithParameters:@"Ustas" andSex:@"M" andAge:45 andHeigh:198.4f andWeigh:122.5f];
    Biorobot* robot = [[Biorobot alloc] initWithParameters:@"Angela" andSex:@"F" andAge:40 andHeigh:164.4f andWeigh:44.f andTypeOfProthesis:@"Hand"];
    Animal* defaultAnimal = [[Animal alloc]initWithParameters:12 andLife:100 andSpeed:10];
    Leopard* leopard = [[Leopard alloc]initWithParameters:4 andLife:100 andSpeed:99];
    Ox* ox = [[Ox alloc]initWithParameters:19 andLife:100 andSpeed:4];
    
    
    NSArray* stackOfObjects = [NSArray arrayWithObjects:defaultAnimal, runner, cycler, swimer, robot, leopard, ox, defaultHuman, nil];
    
    //    NSSortDescriptor* weightSortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"weight" ascending:YES];
    //    NSSortDescriptor* speedSortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"speed" ascending:YES];
    //
    //    NSArray* sortDescriptors = [[NSArray alloc]initWithObjects:weightSortDescriptor, speedSortDescriptor, nil];
    //    NSArray* sortedArray = [stackOfObjects sortedArrayUsingDescriptors:sortDescriptors];
    
    NSArray* sortedArray = [stackOfObjects sortedArrayUsingComparator:^NSComparisonResult(id <NSObject> a, id <NSObject> b) {
        if ([a isKindOfClass:[Human class]] && [b isKindOfClass:[Human class]]) {
            NSInteger ageA = [(Human*)a age];
            NSInteger ageB = [(Human*)b age];
            
            return ageA > ageB;
        } else if ([a isKindOfClass:[Animal class]] && [b isKindOfClass:[Animal class]]) {
            NSInteger speedA = [(Animal*)a speed];
            NSInteger speedB = [(Animal*)b speed];
            
            return speedA > speedB;
        } else if ([a isKindOfClass:[Human class]] && [b isKindOfClass:[Animal class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }}];
    
    
    for (NSObject* object in sortedArray) {
        NSLog(@"__________________________");
        NSLog(@"%@", NSStringFromClass([object class]));
        if ([object isKindOfClass:[Human class]]) {
            Human* human = (Human* )object;
            NSLog(@"Name: %@", human.name);
            NSLog(@"Sex: %@", human.sex);
            NSLog(@"Age: %ld", human.age);
            NSLog(@"Heigh: %.01f", human.heigh);
            NSLog(@"Weigh: %.01f", human.weigh);
            [human move];
            if ([human isKindOfClass:[Biorobot class]]) {
                Biorobot* tempRobot = (Biorobot* )human;
                NSLog(@"Current battery: %ld%%", tempRobot.powerBalance);
            }
        }
        if ([object isKindOfClass:[Animal class]]) {
            Animal* animal = (Animal* )object;
            NSLog(@"Age: %ld", animal.age);
            NSLog(@"%s", animal.isPredator ? "Predator" : "Herbivorous");
            NSLog(@"Speed: %ld", animal.speed);
            NSLog(@"Life: %ld", animal.life);
            [animal move];
        }
    }
}

+ (void) runProtocolTask {
    Human* defaultHuman = [[Human alloc] initWithParameters:@"Joseph" andSex:@"M" andAge:21 andHeigh:178.f andWeigh:77.f];
    
    Swimer* testSwimmer = [[Swimer alloc] initWithParameters:@"Ustas" andSex:@"M" andAge:45 andHeigh:198.4f andWeigh:122.5f];
    [testSwimmer setAmountOfMedal:34];
    
    Runner* testRunner = [[Runner alloc] initWithParameters:@"Julia" andSex:@"F" andAge:28 andHeigh:166.6f andWeigh:54.3f];
    [testRunner setExploisonType:Slow];
    [testRunner setSpeed:15.35f];
    
    Jumper* testJumper = [[Jumper alloc] init];
    [testJumper setDopingType:@"Methan"];
    [testJumper setJumpHeight:144.2f];
    
    Cycler* cycler = [[Cycler alloc] initWithParameters:@"Yaroslav" andSex:@"M" andAge:29 andHeigh:179.22f andWeigh:70.f];
    
    Biorobot* robot = [[Biorobot alloc] initWithParameters:@"Angela" andSex:@"F" andAge:40 andHeigh:164.4f andWeigh:44.f andTypeOfProthesis:@"Hand"];
    [robot setSpeed:34.f];
    [robot setExploisonType:Increddible];
    [robot setJumpHeight:442.3f];
    
    Animal* defaultAnimal = [[Animal alloc]initWithParameters:12 andLife:100 andSpeed:10];
    
    Leopard* leopard = [[Leopard alloc]initWithParameters:4 andLife:100 andSpeed:99];
    [leopard setName:@"Bars"];
    [leopard setJumpHeight:250.3f];
    
    Ox* ox = [[Ox alloc]initWithParameters:19 andLife:100 andSpeed:4];
    [ox setName:@"Mumu"];
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* stackOfObjects = [NSArray arrayWithObjects:defaultAnimal, fake, testRunner, cycler, testSwimmer, robot, leopard, ox, defaultHuman, testJumper, nil];
    
    
    for (NSObject* object in stackOfObjects) {
        NSLog(@"%@", NSStringFromClass([object class]));
        if ([object isKindOfClass:[Human class]]) {
            Human* human = (Human* )object;
            NSLog(@"Name: %@", human.name);
            NSLog(@"Sex: %@", human.sex);
            NSLog(@"Age: %ld", human.age);
            NSLog(@"Heigh: %.01f", human.heigh);
            NSLog(@"Weigh: %.01f", human.weigh);
            [human move];
            
            if ([human isKindOfClass:[Biorobot class]]) {
                Biorobot* tempRobot = (Biorobot* )human;
                NSLog(@"Current battery: %ld%%", tempRobot.powerBalance);
            }
        }
        if ([object isKindOfClass:[Animal class]]) {
            Animal* animal = (Animal* )object;
            NSLog(@"Age: %ld", animal.age);
            NSLog(@"%s", animal.isPredator ? "Predator" : "Herbivorous");
            NSLog(@"Speed: %ld", animal.speed);
            NSLog(@"Life: %ld", animal.life);
            [animal move];
        }
        if ([object conformsToProtocol:@protocol(JumperInterface)]) {
            id <JumperInterface> newObject = (id <JumperInterface>) object;
            [newObject jumpHeight];
            [newObject jump];
            
            if ([newObject respondsToSelector:@selector(takeDoping)]) {
                [newObject takeDoping];
            }
            if ([newObject respondsToSelector:@selector(dopingType)]) {
                [newObject dopingType];
            }
        }
        
        if ([object conformsToProtocol:@protocol(Swimmer)]) {
            id <Swimmer> tempSwimmer = (id <Swimmer>) object;
            [tempSwimmer swim];
            if ([tempSwimmer respondsToSelector:@selector(amountOfMedal)]) {
                [tempSwimmer amountOfMedal];
            }
        }
        
        if ([object conformsToProtocol:@protocol(Runners)]) {
            id <Runners> tempRunner = (id <Runners>) object;
            [tempRunner run];
            NSLog(@"Speed: %f", [tempRunner speed]);
            if ([tempRunner respondsToSelector:@selector(takeDoping)]) {
                [tempRunner takeDoping];
            }
        }
        NSLog(@"__________________________");
    }
}

+ (void) runNSDictionaryTask {
    Student* student1 = [[Student alloc] initWithFname:@"Jihn" andLname:@"Lenon" andHelloMessage:@"Hello, Bitch!!"];
    Student* student2 = [[Student alloc] initWithFname:@"Indi" andLname:@"Terk" andHelloMessage:@"Hello-o-o-o-o-o, Bitch!!"];
    Student* student3 = [[Student alloc] initWithFname:@"Lixi" andLname:@"Au" andHelloMessage:@"Nihao"];
    Student* student4 = [[Student alloc] initWithFname:@"Aoshi" andLname:@"Mura" andHelloMessage:@"Bueno tarde"];
    Student* student5 = [[Student alloc] initWithFname:@"Lisa" andLname:@"Ann" andHelloMessage:@"Lets do smthng"];
    Student* student6 = [[Student alloc] initWithFname:@"Niss" andLname:@"Divur" andHelloMessage:@"Alloha!"];
    Student* student7 = [[Student alloc] initWithFname:@"Olig" andLname:@"Theresty" andHelloMessage:@"Vitaju!!"];
    
        
    
    
    NSDictionary* journal = @{[student1 studentInfo] : student1,
                              [student2 studentInfo] : student2,
                              [student3 studentInfo] : student3,
                              [student4 studentInfo] : student4,
                              [student5 studentInfo] : student5,
                              [student6 studentInfo] : student6,
                              [student7 studentInfo] : student7
                              };
    
    
//    for (NSString *string in [journal allKeys]) {
//        NSLog(@"%@", [journal objectForKey:string]);
//    }
    //NSLog(@"%@", journal);
    
    NSArray *sortedKeys = [[journal allKeys] sortedArrayUsingSelector: @selector(compare:)];
   
    for (NSString *sortedKey in sortedKeys) {
        Student* tempStudent = [journal valueForKey:sortedKey];
        NSLog(@"%@", [tempStudent sayHello]);
    }
}

+ (void) runDelegateTask {
    Doctor* doctor = [[Doctor alloc]init];
    Znahar* znachar = [[Znahar alloc]init];
    Patient* patient1 = [[Patient alloc] init];
    patient1.name = @"Peter";
    patient1.temperature = 36.4f;
    patient1.feelingState = BETTER;
    patient1.headAche = true;
    
    Patient* patient2 = [[Patient alloc] init];
    patient2.name = @"Chan";
    patient2.temperature = 40.4f;
    patient2.feelingState = WORSE;
    patient2.headAche = true;
    
    Patient* patient3 = [[Patient alloc] init];
    patient3.name = @"Judzyk";
    patient3.temperature = 35.4f;
    patient3.feelingState = BETTER;
    patient3.headAche = false;
    
    NSArray* array = [NSArray arrayWithObjects:patient1, patient2, patient3, nil];
    
    for (Patient *patient in array) {
        NSLog(@"Name: %@", patient.name);
        patient.delegate = doctor;
        [patient feelingWorse];
        if (patient.doctorRate < 4) {
            NSLog(@"I am displease ! I go to the Znahar");
            patient.delegate = znachar;
        }
        NSLog(@"_____________________________");
    }
    [doctor generateReport];
    
    NSLog(@"_____________________________");
    NSLog(@"_____________________________");
    
    for (Patient *nextDayPatient in array) {
        NSLog(@"Name: %@", nextDayPatient.name);
        NSLog(@"I going to the %@!", NSStringFromClass([nextDayPatient.delegate class]));
        
    }
}

@end
