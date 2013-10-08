//
//  ViewController.m
//  DemoCoreData
//
//  Created by Mr Tuan on 2/26/13.
//  Copyright (c) 2013 Mr Tuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tbvLabel,listLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"List Label";
    // Do any additional setup after loading the view from its nib.
    listLabel = [[NSMutableArray alloc]init];
    [self addLabel];
    [self loadTableData];
    [tbvLabel reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [listLabel count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    Label *label = [listLabel objectAtIndex:indexPath.row];
    
    cell.textLabel.text = label.name;
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Private methods

- (AppDelegate *)appDelegate {
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}
// This method executes a fetch request and reloads the table view.
- (void) loadTableData {
    NSManagedObjectContext *context = [[self appDelegate]managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    NSEntityDescription *enity = [NSEntityDescription entityForName:@"Label" inManagedObjectContext:context];
    [fetchRequest setEntity:enity];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    NSArray *sort = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sort];
    
    NSError *error = nil;
    listLabel = [[context executeFetchRequest:fetchRequest error:&error]mutableCopy];
}

- (void) addLabel{
    NSManagedObjectContext *context = [[self appDelegate ]managedObjectContext];
    
    // Grab the Label entity
    Label *label = [NSEntityDescription insertNewObjectForEntityForName:@"Label" inManagedObjectContext:context];
    
    label.name = @"Bui Anh Tuan";
    
    label.genre = @"R'N'B";
    
    NSError *error = nil;
    if ([context save:&error]) {
        NSLog(@"The save was successful!");
    } else {
        NSLog(@"The save wasn't successful: %@", [error userInfo]);
    }
}


@end
