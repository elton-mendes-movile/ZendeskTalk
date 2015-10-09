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

- (void)setupCellForType:(OptionsType) cellType andIndex:(NSUInteger)index{
    switch (index) {
        case 0:
            switch (cellType) {
                case OptionsTypeHappy:
                    self.cellTitle.text = @"Write a review";
                    break;
                case OptionsTypeConfused:
                    self.cellTitle.text = @"Gettin started Guide";
                    break;
                case OptionsTypeUnhappy:
                    self.cellTitle.text = @"Contact PlaykidsTalk Team";
                    break;
                default:
                    break;
            }
            break;
        case 1:
            
            switch (cellType) {
                case OptionsTypeHappy:
                    self.cellTitle.text = @"Contact PlaykidsTalk Team";
                    break;
                case OptionsTypeConfused:
                    self.cellTitle.text = @"Contact PlaykidsTalk Team";
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
}

@end
