//
//  MagicalCreature.m
//  MCMS
//
//  Created by Sherrie Jones on 1/20/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

// implement custom initializer
-(instancetype)initWithFullname:(NSString *)fullname {
    self = [super init];
    self.fullname = fullname;
    return self;
}

// implement custom initializer
-(instancetype)initWithFullname:(NSString *)fullname signatureClothingItem:(NSString *)clothingItem {
    self = [self initWithFullname:fullname];
//    self.signatureClothingItem = clothingItem;
    return self;
}

// description method that is called by NSLog()
- (NSString *)description
{
    return [NSString stringWithFormat:@"Creature: %@", self.fullname];
}

@end
