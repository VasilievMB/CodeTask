//
//  NSValueTransformer+CDTTimePeriod.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const CDTTimePeriodDateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

@interface NSValueTransformer (CDTTimePeriod)

+ (instancetype)cdt_dateValueTransformer;

@end
