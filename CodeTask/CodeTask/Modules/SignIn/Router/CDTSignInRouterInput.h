//
//  SignInRouterInput.h
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

@protocol CDTSignInRouterInput <NSObject>

- (void)navigateToChartWithDashboardItem:(CDTDashboardItem *)item;

@end

