//
//  CDTSurroundingPeriodData.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTSurroundingPeriodData.h"

@implementation CDTSurroundingPeriodData

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"timePeriod"  : @"timePeriod",
             @"minValue"    : @"minValue",
             @"maxValue"    : @"maxValue",
             @"avgValue"    : @"avgValue",
             };
}

@end
