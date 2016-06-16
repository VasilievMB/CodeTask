//
//  SignInModuleAssembly.m
//  Project:   CodeTask
//
//  Module:   SignIn
//  Description: SignIn
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTSignInModuleAssembly.h"
#import "CDTSignInViewController.h"
#import "CDTSignInInteractor.h"
#import "CDTSignInPresenter.h"
#import "CDTSignInRouter.h"
#import "CDTApiService.h"

@implementation  CDTSignInModuleAssembly

- (CDTSignInViewController *)viewSignIn {
    
    return [TyphoonDefinition withClass:[CDTSignInViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterSignIn]];
                          }];
}

- (CDTSignInInteractor *)interactorSignIn {
    
    return [TyphoonDefinition withClass:[CDTSignInInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output) with:[self presenterSignIn]];
                              [definition injectProperty:@selector(apiService) with:[self apiService]];
                          }];
}

- (CDTSignInPresenter *)presenterSignIn {
    
    return [TyphoonDefinition withClass:[CDTSignInPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewSignIn]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorSignIn]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerSignIn]];
                          }];
}

- (CDTSignInRouter *)routerSignIn {
    return [TyphoonDefinition withClass:[CDTSignInRouter class]];
}

- (CDTApiService *)apiService {
    return [TyphoonDefinition withClass:[CDTApiService class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(sessionManager) with:[self sessionManager]];
    }];
}

- (CDTHTTPSessionManager *)sessionManager {
    return [TyphoonDefinition withClass:[CDTHTTPSessionManager class]
                          configuration:^(TyphoonDefinition *definition) {
                              definition.scope = TyphoonScopeLazySingleton;
                              [definition useInitializer:@selector(initWithBaseURL:) parameters:^(TyphoonMethod *initializer) {
                                  [initializer injectParameterWith:TyphoonConfig(@"service.url")];
                              }];
                          }];
}

- (id)config {
    return [TyphoonDefinition withConfigName:@"Configuration.plist"];
}

@end