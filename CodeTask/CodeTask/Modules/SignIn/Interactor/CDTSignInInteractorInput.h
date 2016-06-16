//
//  SignInInteractorInput.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>

@protocol CDTSignInInteractorInput <NSObject>

- (void)requestDashboardItemsWithLogin:(NSString *)login password:(NSString *)password;

@end

