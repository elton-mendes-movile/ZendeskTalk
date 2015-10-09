//
//  PlaykidsZendeskOptionTableViewCell.h
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlaykidsZendeskOptionsTableViewController.h"

@interface PlaykidsZendeskOptionTableViewCell : UITableViewCell

- (void)setupCellForType:(OptionsType) cellType andIndex:(NSUInteger)index;

@end
