//
//  PlaykidsZendeskOptionTableViewCell.h
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    CellTypeReview,
    CellTypeContactTeam,
} CellType;

@interface PlaykidsZendeskOptionTableViewCell : UITableViewCell

- (void)setupCellForType:(CellType) cellType;

@end
