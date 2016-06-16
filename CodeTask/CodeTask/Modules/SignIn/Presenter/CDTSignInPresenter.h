//
//  SignInPresenter.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTSignInViewOutput.h"
#import "CDTSignInInteractorOutput.h"

@protocol CDTSignInViewInput;
@protocol CDTSignInInteractorInput;
@protocol CDTSignInRouterInput;

@interface CDTSignInPresenter : NSObject <CDTSignInViewOutput, CDTSignInInteractorOutput>

@property (nonatomic, weak)   id<CDTSignInViewInput> view;
@property (nonatomic, strong) id<CDTSignInInteractorInput> interactor;
@property (nonatomic, strong) id<CDTSignInRouterInput> router;

@end

