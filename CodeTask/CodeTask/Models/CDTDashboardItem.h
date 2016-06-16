//
//  CDTDashboardItem.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "CDTLimitValue.h"
#import "CDTSurroundingPeriodData.h"

@interface CDTDashboardItem : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSString *code;
@property (copy, nonatomic) NSString *label;
@property (strong, nonatomic) CDTLimitValue *kpiValue;
@property (strong, nonatomic) CDTSurroundingPeriodData *surroundingPeriodData;

@end
