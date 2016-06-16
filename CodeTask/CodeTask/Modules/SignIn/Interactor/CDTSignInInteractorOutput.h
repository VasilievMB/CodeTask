//
//  SignInInteractorOutput.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTDashboardItem.h"

@protocol CDTSignInInteractorOutput <NSObject>

- (void)didReceiveDashboardItems:(NSArray<CDTDashboardItem *> *)items;
- (void)didFailToGetDashboardItemsWithError:(NSError *)error;

@end

