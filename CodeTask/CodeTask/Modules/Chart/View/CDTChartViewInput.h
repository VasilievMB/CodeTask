//
//  ChartViewInput.h
//  Project:   CodeTask
//
//  Module:   Chart
//  Description: Chart
//
//  By Vasiljev M.B.  16/06/16
//  ssp 2016
//

#import <Foundation/Foundation.h>
#import "CDTChartItem.h"

@protocol CDTChartViewInput <NSObject>

- (void)setItems:(NSArray<CDTChartItem *> *)items;
- (void)setTitle:(NSString *)title;

@end

