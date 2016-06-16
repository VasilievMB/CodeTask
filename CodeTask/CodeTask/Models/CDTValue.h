//
//  CDTValue.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "CDTAmount.h"

@interface CDTValue : MTLModel <MTLJSONSerializing>

@property (strong, nonatomic) CDTAmount *amountInAggregationCurrency;

@end
