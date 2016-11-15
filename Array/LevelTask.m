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
#import "Government.h"
#import "Pensioner.h"
#import "Businessman.h"
#import "BStudent.h"
#import "TStudent.h"

@interface LevelTask()

@property (strong, nonatomic) Pensioner* pensioner;

@end

@implementation LevelTask

- (void) runLearnerTask {
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

- (void) runMaserTask {
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

- (void) runStarTask {
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

- (void) runSupermanTask {
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

- (void) runProtocolTask {
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

- (void) runNSDictionaryTask {
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

- (void) runDelegateTask {
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

- (void) runNotificationTask {
    Government* gov = [[Government alloc]init];
    //Doctor* tempDoctor = [[Doctor alloc]init];
    //Businessman* businessman = [[Businessman alloc]init];
    self.pensioner = [[Pensioner alloc]init];
    
    gov.tax = 14.f;
    gov.salary += 200.f;
    gov.averagePrice = 100.f;
    gov.pension -= 200.4f;
}

- (void) runBloksTask {
    Patient* patient = [[Patient alloc] init];
    patient.name = @"Changson";
    patient.temperature = 42.4f;
    patient.feelingState = WORSE;
    patient.headAche = true;
    
    NSLog(@"___________________");
    
    
    testSimpleBlock();
    simpleBlockWithString(@"simple string");
    [self verifyString:blockVerifyLenghtOfString andInputString:@"12345"];
    NSLog(@"___________________________________");
    BStudent *student1 = [[BStudent alloc]init];
    student1.fNmame = @"Mikle";
    student1.lName = @"Serious";
    BStudent *student2 = [[BStudent alloc]init];
    student2.fNmame = @"Brad";
    student2.lName = @"Danger";
    BStudent *student3 = [[BStudent alloc]init];
    student3.fNmame = @"Ili";
    student3.lName = @"Sangru";
    BStudent *student4 = [[BStudent alloc]init];
    student4.fNmame = @"Dude";
    student4.lName = @"Black";
    BStudent *student5 = [[BStudent alloc]init];
    student5.fNmame = @"Alex";
    student5.lName = @"Stirliz";
    BStudent *student6 = [[BStudent alloc]init];
    student6.fNmame = @"Mike";
    student6.lName = @"Dank";
    BStudent *student7 = [[BStudent alloc]init];
    student7.fNmame = @"Brit";
    student7.lName = @"Spoonge";
    BStudent *student8 = [[BStudent alloc]init];
    student8.fNmame = @"Oleg";
    student8.lName = @"Serious";
    BStudent *student9 = [[BStudent alloc]init];
    student9.fNmame = @"Ilyia";
    student9.lName = @"UnterBridge";
    BStudent *student10 = [[BStudent alloc]init];
    student10.fNmame = @"Gala";
    student10.lName = @"Sunrize";
    
    NSArray *studentsArray = [NSArray arrayWithObjects:student1, student2, student3, student4, student5,
                              student6, student7, student8, student9, student10, nil];
    NSArray *sortedArray = [studentsArray sortedArrayUsingComparator:studentsComparator];
    
    for (BStudent *student in sortedArray) {
        NSLog(@"%@: %@, %@;", student, student.fNmame, student.lName);
    }
}


- (void) performTask {
    TStudent* ts1 = [[TStudent alloc]init];
    TStudent* ts2 = [[TStudent alloc]init];
    TStudent* ts3 = [[TStudent alloc]init];
    
    ts1.name = @"ts1";
    ts2.name = @"ts2";
    ts3.name = @"ts3";
    
    //    [ts1 guessAnswerI:11111 andRange:100000000];
    //    [ts2 guessAnswerI:22222 andRange:100000000];
    //    [ts3 guessAnswerI:33333 andRange:100000000];
    
    //    [ts1 guessAnswerB:11111 andRange:100000000];
    //    [ts2 guessAnswerB:22222 andRange:100000000];
    //    [ts3 guessAnswerB:33333 andRange:100000000];
    
    [ts1 guessAnswerG:11111 andRange:100000000];
    [ts2 guessAnswerG:22222 andRange:100000000];
    [ts3 guessAnswerG:33333 andRange:100000000];
    
    
}

- (void) runThreadTask {
    [self performTask];
}

- (void) runStringTask {
    NSString *rawData = @"The NSString class declares the programmatic interface for an object that manages immutable strings. An immutable string is a text string that is defined when it is created and subsequently cannot be changed. NSString is implemented to represent an array of Unicode characters, in other words, a text string. The mutable subclass of NSString is NSMutableString. The NSString class has two primitive methods—length and characterAtIndex:—that provide the basis for all other methods in its interface. The length method returns the total number of Unicode characters in the string. characterAtIndex: gives access to each character in the string by index, with index values starting at 0. NSString declares methods for finding and comparing strings. It also declares methods for reading numeric values from strings, for combining strings in various ways, and for converting a string to different forms (such as encoding and case changes). The Application Kit also uses NSParagraphStyle and its subclass NSMutableParagraphStyle to encapsulate the paragraph or ruler attributes used by the NSAttributedString classes. Additionally, methods to support string drawing are described in NSString Additions, found in the Application Kit. NSString is “toll-free bridged” with its Core Foundation counterpart, CFStringRef. See “Toll-Free Bridging” for more information on toll-free bridging. String Objects NSString objects represent character strings in frameworks. Representing strings as objects allows you to use strings wherever you use other objects. It also provides the benefits of encapsulation, so that string objects can use whatever encoding and storage are needed for efficiency while simply appearing as arrays of characters. The cluster’s two public classes, NSString and NSMutableString, declare the programmatic interface for non-editable and editable strings, respectively. Note: An immutable string is a text string that is defined when it is created and subsequently cannot be changed. An immutable string is implemented as an array of Unicode characters (in other words, a text string). To create and manage an immutable string, use the NSString class. To construct and manage a string that can be changed after it has been created, use NSMutableString. The objects you create using NSString and NSMutableString are referred to as string objects (or, when no confusion will result, merely as strings). The term C string refers to the standard char * type. Because of the nature of class clusters, string objects aren’t actual instances of the NSString or NSMutableString classes but of one of their private subclasses. Although a string object’s class is private, its interface is public, as declared by these abstract superclasses, NSString and NSMutableString. The string classes adopt the NSCopying and NSMutableCopying protocols, making it convenient to convert a string of one type to the other. Understanding characters A string object presents itself as an array of Unicode characters (Unicode is a registered trademark of Unicode, Inc.). You can determine how many characters a string object contains with the length method and can retrieve a specific character with the characterAtIndex: method. These two “primitive” methods provide basic access to a string object. Most use of strings, however, is at a higher level, with the strings being treated as single entities: You compare strings against one another, search them for substrings, combine them into new strings, and so on. If you need to access string objects character by character, you must understand the Unicode character encoding, specifically issues related to composed character sequences. For details see The Unicode Standard, Version 4.0 (The Unicode Consortium, Boston: Addison-Wesley, 2003, ISBN 0-321-18578-1) and the Unicode Consortium web site: http://www.unicode.org/. See also “Characters and Grapheme Clusters” in String Programming Guide. Interpreting UTF-16-encoded data When creating an NSString object from a UTF-16-encoded string (or a byte stream interpreted as UTF-16), if the byte order is not otherwise specified, NSString assumes that the UTF-16 characters are big-endian, unless there is a BOM (byte-order mark), in which case the BOM dictates the byte order. When creating an NSString object from an array of Unicode characters, the returned string is always native-endian, since the array always contains Unicode characters in native byte order. Distributed objects Over distributed-object connections, mutable string objects are passed by-reference and immutable string objects are passed by-copy. Subclassing Notes It is possible to subclass NSString (and NSMutableString), but doing so requires providing storage facilities for the string (which is not inherited by subclasses) and implementing two primitive methods. The abstract NSString and NSMutableString classes are the public interface of a class cluster consisting mostly of private, concrete classes that create and return a string object appropriate for a given situation. Making your own concrete subclass of this cluster imposes certain requirements (discussed in “Methods to Override”). Make sure your reasons for subclassing NSString are valid. Instances of your subclass should represent a string and not something else. Thus the only attributes the subclass should have are the length of the character buffer it’s managing and access to individual characters in the buffer. Valid reasons for making a subclass of NSString include providing a different backing store (perhaps for better performance) or implementing some aspect of object behavior differently, such as memory management. If your purpose is to add non-essential attributes or metadata to your subclass of NSString, a better alternative would be object composition (see “Alternatives to Subclassing”). Cocoa already provides an example of this with the NSAttributedString class. Any subclass of NSString must override the primitive instance methods length and characterAtIndex:. These methods must operate on the backing store that you provide for the characters of the string. For this backing store you can use a static array, a dynamically allocated buffer, a standard NSString object, or some other data type or mechanism. You may also choose to override, partially or fully, any other NSString method for which you want to provide an alternative implementation. For example, for better performance it is recommended that you override getCharacters:range: and give it a faster implementation. You might want to implement an initializer for your subclass that is suited to the backing store that the subclass is managing. The NSString class does not have a designated initializer, so your initializer need only invoke the init method of super. The NSString class adopts the NSCopying, NSMutableCopying, and NSCoding protocols; if you want instances of your own custom subclass created from copying or coding, override the methods in these protocols. Note that you shouldn’t override the hash method. Alternatives to Subclassing Often a better and easier alternative to making a subclass of NSString—or of any other abstract, public class of a class cluster, for that matter—is object composition. This is especially the case when your intent is to add to the subclass metadata or some other attribute that is not essential to a string object. In object composition, you would have an NSString object as one instance variable of your custom class (typically a subclass of NSObject) and one or more instance variables that store the metadata that you want for the custom object. Then just design your subclass interface to include accessor methods for the embedded string object and the metadata. If the behavior you want to add supplements that of the existing class, you could write a category on NSString. Keep in mind, however, that this category will be in effect for all instances of NSString that you use, and this might have unintended consequences.";
    
    NSArray *rawDataArray = [rawData componentsSeparatedByString:@"."];
    NSMutableArray *dataArryWithNSString = [[NSMutableArray alloc]init];
    
    for (NSString *tempString in rawDataArray) {
        if ([tempString containsString:@"NSString"]) {
            [dataArryWithNSString addObject:tempString];
        }
    };
    NSMutableArray *reverseArray = [[NSMutableArray alloc]init];
    
    for (NSString *tempString in dataArryWithNSString) {
        NSMutableArray *tempArray = [[tempString componentsSeparatedByString:@" "] mutableCopy];
        tempArray = [[[tempArray reverseObjectEnumerator] allObjects] mutableCopy];
        NSString *resultString = @"";
        for (NSString *reversedString in tempArray) {
            resultString = [resultString stringByAppendingString:[NSString stringWithFormat:@"%@ ", reversedString]];
        }
        [reverseArray addObject:resultString];
    }
    
        for (NSString *tempString in reverseArray) {
            NSLog(@"%@", tempString);
          }
    
};


NSComparisonResult (^studentsComparator) (id, id) = ^(id obj1, id obj2) {
    NSString *obj1LName = [(BStudent*)obj1 lName];
    NSString *obj2LName = [(BStudent*)obj2 lName];
    
    
    if ([obj1LName isEqualToString:obj2LName]) {
        return [[(BStudent*)obj1 fNmame] compare:[(BStudent*)obj2 fNmame]];
    } else {
        return [obj1LName compare:obj2LName];
    }
};

- (void) verifyString: (BOOL (^) (NSString*)) inputBlock andInputString: (NSString*) string {
    if (inputBlock(string)) {
        NSLog(@"Current string is more than 5 sybmols - correct");
    } else {
        NSLog(@"Current string is less than 5 symbols - incorrect");
    }
}

void (^testSimpleBlock)(void) = ^{
    NSLog(@"Test simple block was performed");
};

void (^simpleBlockWithString) (NSString*) = ^(NSString* inputStringParameter){
    NSLog(@"Simple block was performed, input string: %@", inputStringParameter);
};

BOOL (^blockVerifyLenghtOfString) (NSString*) = ^(NSString* inputStringParameter){
    if ([inputStringParameter length] < 5) {
        return NO;
    } else {
        return YES;
    }
};



@end
