//
//  CDTChartModuleInput.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDTDashboardItem.h"

@protocol CDTChartModuleInput <NSObject>

- (void)setDashboardItem:(CDTDashboardItem *)item;

@end
