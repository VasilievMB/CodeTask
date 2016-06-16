//
//  SignInInteractor.h
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTSignInInteractorInput.h"
#import "CDTApiService.h"

@protocol CDTSignInInteractorOutput;

@interface CDTSignInInteractor : NSObject <CDTSignInInteractorInput>

@property (nonatomic, weak) id<CDTSignInInteractorOutput> output;
@property (nonatomic, strong) CDTApiService *apiService;

@end

