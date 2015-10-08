//
//  PlaykidsZendeskFlowManager.m
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import "PlaykidsZendeskFlowManager.h"
#import "PlaykidsZendeskNavigationViewController.h"
#import "PlaykidsZendeskOptionsTableViewController.h"

@interface PlaykidsZendeskFlowManager () <UIActionSheetDelegate>

@end

@implementation PlaykidsZendeskFlowManager

+ (void)showZendeskFlowIn:(UIViewController *)controller {
    
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"How do you feel about Playkids Talk?" message:@"" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Happy" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        PlaykidsZendeskNavigationViewController *nav = [PlaykidsZendeskNavigationViewController new];
        PlaykidsZendeskOptionsTableViewController *vc = [PlaykidsZendeskOptionsTableViewController new];
        [nav setViewControllers:@[vc]];
        [controller presentViewController:nav animated:YES completion:nil];
    }]];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Confused" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Unhappy" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [controller presentViewController:actionSheet animated:YES completion:nil];
}

+ (void)initZendeskFramework {
    [ZDKLogger enable:YES];

    ZDKAnonymousIdentity *identity = [ZDKAnonymousIdentity new];
//    identity.name = @"Elton Mendes";
//    identity.email = @"elton.mendes@movile.com";
    [ZDKConfig instance].userIdentity = identity;


    [[ZDKConfig instance] initializeWithAppId:@"ea99561ebf35239bbed56b542945d0cf1beb2320ce158104" zendeskUrl:@"https://playkids.zendesk.com" ClientId:@"mobile_sdk_client_f35159f871524ea553dc" onSuccess:^() {

    } onError:^(NSError *error) {
        
    }];
}


@end
