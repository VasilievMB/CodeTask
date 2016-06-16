//
//  ChartViewController.h
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <UIKit/UIKit.h>
#import "CDTChartViewInput.h"

@protocol CDTChartViewOutput;

@interface CDTChartViewController : UIViewController <CDTChartViewInput>

@property (nonatomic, strong) id<CDTChartViewOutput> output;

@end

