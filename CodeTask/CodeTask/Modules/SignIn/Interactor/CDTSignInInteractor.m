//
//  SignInInteractor.m
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTSignInInteractor.h"
#import "CDTSignInInteractorOutput.h"

@implementation CDTSignInInteractor

#pragma mark - CDTSignInInteractorInput

- (void)requestDashboardItemsWithLogin:(NSString *)login password:(NSString *)password {
    [self.apiService setAuthorizationCredentialsWithLogin:login password:password];
    [self.apiService requestDashboardItemsWithSuccess:^(NSURLSessionDataTask *task, NSArray<CDTDashboardItem *> *items) {
        [self.output didReceiveDashboardItems:items];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [self.output didFailToGetDashboardItemsWithError:error];
    }];
}

@end