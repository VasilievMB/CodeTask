//
//  CDTLimitValue.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDTValue.h"
#import "CDTTimePeriod.h"

@interface CDTLimitValue : CDTValue

@property (strong, nonatomic) CDTTimePeriod *timePeriod;

@end
