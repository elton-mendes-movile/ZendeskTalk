//
//  PlaykidsZendeskOptionsTableViewController.h
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    OptionsTypeHappy,
    OptionsTypeConfused,
    OptionsTypeUnhappy,
} OptionsType;

@interface PlaykidsZendeskOptionsTableViewController : UITableViewController

@property (nonatomic) OptionsType currentOptionsType;

@end
