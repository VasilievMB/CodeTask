//
//  CDTLimitValue.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTLimitValue.h"

@implementation CDTLimitValue

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return [[super JSONKeyPathsByPropertyKey] mtl_dictionaryByAddingEntriesFromDictionary:@{
                                                                                            @"timePeriod" : @"timePeriod"
                                                                                            }];
}

@end
