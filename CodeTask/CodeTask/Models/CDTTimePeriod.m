//
//  CDTTimePeriod.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTTimePeriod.h"
#import "NSValueTransformer+CDTTimePeriod.h"

@implementation CDTTimePeriod

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"periodEnd"       : @"periodEnd",
             @"sliceUnit"       : @"sliceUnit",
             @"sliceUnitCount"  : @"sliceUnitCount",
             @"sliceCount"      : @"sliceCount"
             };
}

+ (NSValueTransformer *)periodEndJSONTransformer {
    return [NSValueTransformer cdt_dateValueTransformer];
}

@end
