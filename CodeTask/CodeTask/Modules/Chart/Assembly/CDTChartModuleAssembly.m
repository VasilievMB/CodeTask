//
//  ChartModuleAssembly.m
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTChartModuleAssembly.h"
#import "CDTChartViewController.h"
#import "CDTChartInteractor.h"
#import "CDTChartPresenter.h"
#import "CDTChartRouter.h"

@implementation  CDTChartModuleAssembly

- (CDTChartViewController *)viewChart {
    
    return [TyphoonDefinition withClass:[CDTChartViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterChart]];
                          }];
}

- (CDTChartInteractor *)interactorChart {
    
    return [TyphoonDefinition withClass:[CDTChartInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterChart]];
                          }];
}

- (CDTChartPresenter *)presenterChart {
    
    return [TyphoonDefinition withClass:[CDTChartPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewChart]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorChart]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerChart]];
                          }];
}

- (CDTChartRouter *)routerChart {
    return [TyphoonDefinition withClass:[CDTChartRouter class]];
}

@end