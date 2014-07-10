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
        self.tableView.delegate = self;
    }
    NSLog(@"sizeof(NSInteger) = %@", @(sizeof(NSInteger)));
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView reloadData];
}


- (void) tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView reloadData];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"View did load");
    
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[WeatherItemStore sharedStore] allItems] count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Adding a cell");

    WeatherDayCell *cell = (WeatherDayCell *)[tableView dequeueReusableCellWithIdentifier:CellClassName];
    if(!cell)
    {
        NSArray *topLevelItems = [cellLoader instantiateWithOwner:self options:nil];
        cell = [topLevelItems objectAtIndex:0];

    }
    
    cell.highTempLabel.text = @"189º";
    //cell.imageView.frame.size =
    //cell.nameLabel.text = @"fired!";
    //cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"clear_day@2x.png"]];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
