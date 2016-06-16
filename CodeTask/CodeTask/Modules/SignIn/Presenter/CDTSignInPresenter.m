//
//  SignInPresenter.m
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTSignInPresenter.h"
#import "CDTSignInViewInput.h"
#import "CDTSignInInteractorInput.h"
#import "CDTSignInRouterInput.h"

@implementation CDTSignInPresenter

#pragma mark - CDTSignInViewOutput

- (void)setupView {
    [self.view showError:nil];
    [self.view setPending:NO];
}

- (void)onSignInWithLogin:(NSString *)login password:(NSString *)password {
    [self.view showError:nil];
    [self.view setPending:YES];
    
    [self.interactor requestDashboardItemsWithLogin:login password:password];
}

#pragma mark - CDTSignInInteractorOutput

- (void)didReceiveDashboardItems:(NSArray<CDTDashboardItem *> *)items {
    [self.view setPending:NO];
    [self.router navigateToChartWithDashboardItem:items.firstObject];
}

- (void)didFailToGetDashboardItemsWithError:(NSError *)error {
    [self.view setPending:NO];
    [self.view showError:error];
}

@end