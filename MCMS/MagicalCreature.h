//
//  MagicalCreature.h
//  MCMS
//
//  Created by Sherrie Jones on 1/20/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property (weak, nonatomic) NSString *name;
-(instancetype)initWithFullname:(NSString *)fullname;

//-(instancetype)initWithFullname:(NSString *)fullname signatureClothingItem:(NSString *)clothingItem;
//
@property NSString *fullname;
//@property NSString *signatureClothingItem;

@end
