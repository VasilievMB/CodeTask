//
//  ChartInteractor.h
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTChartInteractorInput.h"

@protocol CDTChartInteractorOutput;

@interface CDTChartInteractor : NSObject <CDTChartInteractorInput>

@property (nonatomic, weak) id<CDTChartInteractorOutput> output;

@end

