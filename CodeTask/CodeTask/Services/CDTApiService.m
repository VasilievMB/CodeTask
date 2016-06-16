//
//  CDTApiService.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTApiService.h"

@implementation CDTApiService

- (instancetype)init {
    self = [super init];
    if (self) {
        self.JSONAdapter = [[MTLJSONAdapter alloc] initWithModelClass:[CDTDashboardItem class]];
    }
    return self;
}

- (void)setAuthorizationCredentialsWithLogin:(NSString *)login password:(NSString *)password {
    NSParameterAssert(login != nil);
    NSParameterAssert(password != nil);
    [self.sessionManager.requestSerializer setAuthorizationHeaderFieldWithUsername:login password:password];
}

- (void)clearAuthorizationCredentials {
    [self.sessionManager.requestSerializer clearAuthorizationHeader];
}

- (NSURLSessionDataTask *)requestDashboardItemsWithSuccess:(void (^)(NSURLSessionDataTask * task, NSArray<CDTDashboardItem *> *items))success
                                                   failure:(void (^)(NSURLSessionDataTask * task, NSError *error))failure {
    return [self.sessionManager GET:@"dashboarditems"
                         parameters:nil
                           progress:nil
                            success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                                NSError *error = nil;
                                NSArray<CDTDashboardItem *> *items = [self.JSONAdapter cdt_modelsFromJSONArray:responseObject error:&error];
                                if (error) {
                                    failure(task, error);
                                } else {
                                    success(task, items);
                                }
                            } failure:failure];
}

@end
