//
//  CDTApiService.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDTHTTPSessionManager.h"
#import "CDTDashboardItem.h"
#import "MTLJSONAdapter+CDTExtension.h"

@interface CDTApiService : NSObject

@property (strong, nonatomic) CDTHTTPSessionManager *sessionManager;
@property (strong, nonatomic) MTLJSONAdapter *JSONAdapter;

- (void)setAuthorizationCredentialsWithLogin:(NSString *)login password:(NSString *)password;

- (NSURLSessionDataTask *)requestDashboardItemsWithSuccess:(void (^)(NSURLSessionDataTask * task, NSArray<CDTDashboardItem *> *items))success
                                                   failure:(void (^)(NSURLSessionDataTask * task, NSError *error))failure;

- (void)clearAuthorizationCredentials;

@end
