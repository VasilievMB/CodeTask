//
//  ChartPresenter.m
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import "CDTChartPresenter.h"
#import "CDTChartViewInput.h"
#import "CDTChartInteractorInput.h"
#import "CDTChartRouterInput.h"

@implementation CDTChartPresenter

#pragma mark - ChartViewOutput

- (void)setupView {

    NSParameterAssert(self.dashboardItem != nil);
    
    CDTChartItem *minItem = [[CDTChartItem alloc] init];
    minItem.title = NSLocalizedString(@"min", @"");
    minItem.value = self.dashboardItem.surroundingPeriodData.minValue.amountInAggregationCurrency.value;
    
    CDTChartItem *avgItem = [[CDTChartItem alloc] init];
    avgItem.title = NSLocalizedString(@"avg", @"");
    avgItem.value = self.dashboardItem.surroundingPeriodData.avgValue.amountInAggregationCurrency.value;
    
    CDTChartItem *maxItem = [[CDTChartItem alloc] init];
    maxItem.title = NSLocalizedString(@"max", @"");
    maxItem.value = self.dashboardItem.surroundingPeriodData.maxValue.amountInAggregationCurrency.value;
    
    [self.view setItems:@[maxItem, avgItem, minItem]];
    
    [self.view setTitle:self.dashboardItem.label];
}

#pragma mark - ChartInteractorOutput

@end