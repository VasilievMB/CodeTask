//
//  ChartPresenter.h
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTChartViewOutput.h"
#import "CDTChartInteractorOutput.h"

@protocol CDTChartViewInput;
@protocol CDTChartInteractorInput;
@protocol CDTChartRouterInput;

@interface CDTChartPresenter : NSObject <CDTChartViewOutput, CDTChartInteractorOutput>

@property (nonatomic, weak)   id<CDTChartViewInput> view;
@property (nonatomic, strong) id<CDTChartInteractorInput> interactor;
@property (nonatomic, strong) id<CDTChartRouterInput> router;

@end

