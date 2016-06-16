//
//  SignInRouter.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTSignInRouterInput.h"
#import "CDTSignInRouterInput.h"
#import <UIKit/UIKit.h>

@interface CDTSignInRouter : NSObject <CDTSignInRouterInput>

@property (weak, nonatomic) UIViewController *viewController;

- (void)navigateToChartWithDashboardItem:(CDTDashboardItem *)item;

@end