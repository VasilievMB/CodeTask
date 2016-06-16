//
//  SignInViewInput.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>

@protocol CDTSignInViewInput <NSObject>

- (void)showError:(NSError *)error;
- (void)setPending:(BOOL)pending;

@end

