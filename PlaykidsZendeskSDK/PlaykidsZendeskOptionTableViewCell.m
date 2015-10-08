//
//  PlaykidsZendeskOptionTableViewCell.m
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import "PlaykidsZendeskOptionTableViewCell.h"

@interface PlaykidsZendeskOptionTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *cellTitle;


@end

@implementation PlaykidsZendeskOptionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setupCellForType:(CellType) cellType {
    switch (cellType) {
        case CellTypeReview:
            self.cellTitle.text = @"Write a review";
            break;
        case CellTypeContactTeam:
            self.cellTitle.text = @"Contact the PlayKids Talk team";
            break;
        default:
            break;
    }
}

@end
