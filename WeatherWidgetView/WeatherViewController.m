//
//  TodayViewController.m
//  WeatherWidget
//
//  Created by Kevin Zhang on 7/9/14.
//  Copyright (c) 2014 Kevin Zhang. All rights reserved.
//

#import "WeatherViewController.h"
#import "WeatherItemStore.h"
#import "WeatherItem.h"
#import "WeatherDayCell.h"

@interface WeatherViewController ()

@property (nonatomic, strong) IBOutlet UIView *headerView;
@end

@implementation WeatherViewController

static NSString *CellClassName = @"WeatherDayCell";




-(instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"fdisha");
    return self;
}
- (instancetype)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[WeatherItemStore sharedStore] createItem];
            cellLoader = [UINib nibWithNibName:CellClassName bundle:[NSBundle mainBundle]];
        }
        //Setting the row height
        self.tableView.rowHeight = 111;
    }
    NSLog(@"sizeof(NSInteger) = %@", @(sizeof(NSInteger)));
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"View did load");
    
    
    
    
    
//    
//    UINib *nib = [UINib nibWithNibName:@"Cell" bundle:nil];
//    [self.tableView registerNib:nib
//         forCellReuseIdentifier:@"cell"];
//
}



-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[WeatherItemStore sharedStore] allItems] count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
//    cell.textLabel.text = @"hfidsa";
//    return cell;
    
    NSLog(@"Adding a cell");
//    static NSString *simpleTableIdentifier = @"SimpleTableItem";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//    }
//    
//    cell.textLabel.text = @"yea";
    //cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    
//    return cell;

    WeatherDayCell *cell = (WeatherDayCell *)[tableView dequeueReusableCellWithIdentifier:CellClassName];
    if(!cell)
    {
        NSArray *topLevelItems = [cellLoader instantiateWithOwner:self options:nil];
        cell = [topLevelItems objectAtIndex:0];

    }
    cell.nameLabel.text = @"fired!";
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"clear_day@2x.png"]];
    return cell;
    
    
    
    //
//    
//    static NSString *CellIdentifier = @"TableViewCell";
//    
//    TableViewCell *cell = (TableViewCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil)
//    {
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
//        cell = (TableViewCell *)[nib objectAtIndex:0];
//    }
//    
//    cell.text = @"some text to test";
//    return cell;
//
//    // Get a new or recycled cell
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
//    
//    // Set the text on the cell with the description of the item
//    // that is at the nth index of items, where n = row this cell
//    // will appear in on the tableview
//    NSArray *items = [[BNRItemStore sharedStore] allItems];
//    BNRItem *item = items[indexPath.row];
//    
//    cell.textLabel.text = [item description];
//    
//    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
