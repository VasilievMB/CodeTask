//
//  SignInViewOutput.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>

@protocol CDTSignInViewOutput <NSObject>

- (void)setupView;
- (void)onSignInWithLogin:(NSString *)login password:(NSString *)password;

@end

