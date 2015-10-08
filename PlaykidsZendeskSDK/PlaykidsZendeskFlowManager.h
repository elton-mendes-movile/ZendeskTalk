//
//  PlaykidsZendeskFlowManager.h
//  PlaykidsZendeskSDK
//
//  Created by Elton Mendes Vieira Junior on 10/8/15.
//  Copyright © 2015 Elton Mendes Vieira Junior. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PlaykidsZendeskFlowManager : NSObject


/* Setup Methods
*/
+ (void)initZendeskFrameworkWithAppId:(NSString *)appId zendeskUrl:(NSString *)zendeskURL clientId:(NSString *)clientId;

+ (void)setupUserIdentity:(NSString *)name email:(NSString *)email;

+ (void)enableZendeskLog;

/* Flow Methods
*/
+ (void)showZendeskFlowIn:(UIViewController *)controller;


@end
