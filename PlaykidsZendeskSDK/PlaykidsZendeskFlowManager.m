//
//  PlaykidsZendeskFlowManager.m
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//
#import <ZendeskSDK/ZendeskSDK.h>
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

+ (void)initZendeskFrameworkWithAppId:(NSString *)appId zendeskUrl:(NSString *)zendeskURL clientId:(NSString *)clientId {
    
    ZDKAnonymousIdentity *identity = [ZDKAnonymousIdentity new];

    [ZDKConfig instance].userIdentity = identity;


    [[ZDKConfig instance] initializeWithAppId:appId zendeskUrl:zendeskURL ClientId:clientId onSuccess:^() {

    } onError:^(NSError *error) {
        
    }];
}

+ (void)setupUserIdentity:(NSString *)name email:(NSString *)email {
    
    ZDKAnonymousIdentity *identity = [ZDKAnonymousIdentity new];
    identity.name = name;
    identity.email = email;
    [ZDKConfig instance].userIdentity = identity;

}

+ (void)enableZendeskLog {
    [ZDKLogger enable:YES];
}


@end
