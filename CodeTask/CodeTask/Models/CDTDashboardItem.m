//
//  CDTDashboardItem.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTDashboardItem.h"

@implementation CDTDashboardItem

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"code"                    : @"code",
             @"label"                   : @"label",
             @"kpiValue"                : @"kpiValue",
             @"surroundingPeriodData"   : @"surroundingPeriodData",
             };
}

@end
