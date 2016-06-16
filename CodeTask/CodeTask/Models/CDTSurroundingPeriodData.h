//
//  CDTSurroundingPeriodData.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "CDTTimePeriod.h"
#import "CDTLimitValue.h"
#import "CDTAvgValue.h"

@interface CDTSurroundingPeriodData : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) CDTTimePeriod *timePeriod;
@property (strong, nonatomic) CDTLimitValue *minValue;
@property (strong, nonatomic) CDTLimitValue *maxValue;
@property (strong, nonatomic) CDTAvgValue *avgValue;

@end
