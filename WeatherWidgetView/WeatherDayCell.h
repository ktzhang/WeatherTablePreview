//
//  Cell.h
//  WeatherWidgetView
//
//  Created by Kevin Zhang on 7/9/14.
//  Copyright (c) 2014 Kevin Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherDayCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayLabelTemp;
@property (weak, nonatomic) IBOutlet UILabel *lowTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *highTempLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
