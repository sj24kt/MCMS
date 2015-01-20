//
//  ViewController.m
//  MCMS
//
//  Created by Sherrie Jones on 1/20/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "RootViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // must alloc and init MagicalCreature custom class
    MagicalCreature *sasquatch = [[MagicalCreature alloc] initWithFullname:@"Bigfoot"];
    MagicalCreature *horseman = [[MagicalCreature alloc] initWithFullname:@"The Headless Horseman"];
    MagicalCreature *mothman = [[MagicalCreature alloc] initWithFullname:@"Thunderbird"];

    // creatures array with object references
    self.creatures = [NSMutableArray arrayWithObjects:sasquatch, horseman, mothman, nil];

     // Fast Enumeration = iterates over everything in an array
        for (MagicalCreature *creature in self.creatures) {
            // executes once for each creature in the array
            NSLog(@"%@", creature);
        }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellID" forIndexPath:indexPath];
    cell.textLabel.text = creature.fullname;

    return cell;
}


@end
