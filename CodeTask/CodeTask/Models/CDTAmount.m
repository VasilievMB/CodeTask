//
//  CDTAmount.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTAmount.h"

@implementation CDTAmount

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"unit"    : @"unit",
             @"value"   : @"value"
             };
}

@end
