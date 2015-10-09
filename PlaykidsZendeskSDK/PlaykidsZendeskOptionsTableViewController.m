//
//  PlaykidsZendeskOptionsTableViewController.m
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import <ZendeskSDK/ZendeskSDK.h>
#import "PlaykidsZendeskOptionsTableViewController.h"
#import "PlaykidsZendeskOptionTableViewCell.h"

typedef enum : NSUInteger {
    SectionTypeContact,
} SectionType;


@interface PlaykidsZendeskOptionsTableViewController ()

@end

@implementation PlaykidsZendeskOptionsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.title = @"Leave a feedback";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backAction:)];

    NSBundle *frameworkBundle = [NSBundle bundleForClass:[PlaykidsZendeskOptionTableViewCell class]];

    
    UINib *nib = [UINib nibWithNibName:@"PlaykidsZendeskOptionTableViewCell" bundle:frameworkBundle];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"OptionCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)backAction:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (self.currentOptionsType) {
        case OptionsTypeHappy:
            return 2;
            break;
        case OptionsTypeConfused:
            return 2;
            break;
        case OptionsTypeUnhappy:
            return 1;
            break;
        default:
            break;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    switch (self.currentOptionsType) {
        case OptionsTypeHappy:
            return @"We`d love to know how we can make PlaykidsTalk even better - and really appreciate if you left a review on the app store.";
            break;
        case OptionsTypeConfused:
            return @"If you're unsure about how to use PlaykidsTalk, why not visit the PlaykidsTalk help center or contact the PlayKids team?";
            break;
        case OptionsTypeUnhappy:
            return @"We'd love to know how we can make PlaykidsTalk even better, and make your experience with PlaykidsTalk a happy one!";
            break;
        default:
            break;
    }
    
    return @"Unknown";
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section == SectionTypeContact ? 150.0f : 0.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, self.view.frame.size.width - 20, 150.0f)];
    myLabel.font = [UIFont boldSystemFontOfSize:15];
    myLabel.numberOfLines = 0;
    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
    myLabel.backgroundColor = [UIColor clearColor];
    
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    [headerView addSubview:myLabel];
    
    return headerView;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlaykidsZendeskOptionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionCell" forIndexPath:indexPath];
    
    [cell setupCellForType:self.currentOptionsType andIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            switch (self.currentOptionsType) {
                case OptionsTypeHappy:{
                    NSString *iTunesLink = @"itms://itunes.apple.com/br/app/playkids-talk-o-melhor-e-mais/id1020028752?mt=8";
                    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
                }
                    break;
                case OptionsTypeConfused: {
                    [ZDKHelpCenter showHelpCenterWithNavController:self.navigationController filterByCategoryId:@"200423088" categoryName:@"playKids-talk" layoutGuide:ZDKLayoutRespectAll];

                }
                    break;
                case OptionsTypeUnhappy:{
                    [ZDKRequests showRequestCreationWithNavController:self.navigationController];
                }
                    break;
                default:
                    break;
            }

        }
            break;
        case 1:
            [ZDKRequests showRequestCreationWithNavController:self.navigationController];
            break;
        default:
            break;
    }
}
@end
