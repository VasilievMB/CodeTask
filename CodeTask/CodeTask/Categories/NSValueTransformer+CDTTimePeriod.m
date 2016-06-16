//
//  NSValueTransformer+CDTTimePeriod.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "NSValueTransformer+CDTTimePeriod.h"
#import <Mantle/Mantle.h>

@implementation NSValueTransformer (CDTTimePeriod)

+ (instancetype)cdt_dateValueTransformer {
    return [NSValueTransformer mtl_dateTransformerWithDateFormat:CDTTimePeriodDateFormat locale:[NSLocale currentLocale]];
}

@end
