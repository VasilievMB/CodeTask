//
//  SignInViewController.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <UIKit/UIKit.h>
#import "CDTSignInViewInput.h"

@protocol CDTSignInViewOutput;

@interface CDTSignInViewController : UIViewController <CDTSignInViewInput>

@property (nonatomic, strong) id<CDTSignInViewOutput> output;

@end

