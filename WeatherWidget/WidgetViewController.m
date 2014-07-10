//
//  TodayViewController.m
//  WeatherWidget
//
//  Created by Kevin Zhang on 7/10/14.
//  Copyright (c) 2014 Kevin Zhang. All rights reserved.
//

#import "WidgetViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface WidgetViewController () <NCWidgetProviding>

@end

@implementation WidgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encoutered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
