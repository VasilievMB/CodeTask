//
//  SignInRouter.m
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTSignInRouter.h"
#import "CDTChartModuleInput.h"
#import "CDTChartViewController.h"

@implementation CDTSignInRouter

#pragma mark - CDTSignInRouterInput

- (void)navigateToChartWithDashboardItem:(CDTDashboardItem *)item {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    CDTChartViewController *view = [storyboard instantiateViewControllerWithIdentifier:@"Chart"];
    id<CDTChartModuleInput> module = (id<CDTChartModuleInput>)view.output;
    [module setDashboardItem:item];
    [self.viewController.navigationController pushViewController:view animated:YES];
}

@end