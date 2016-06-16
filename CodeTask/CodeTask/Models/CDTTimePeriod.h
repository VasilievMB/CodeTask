//
//  CDTTimePeriod.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface CDTTimePeriod : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSDate *periodEnd;
@property (copy, nonatomic) NSString *sliceUnit;
@property (copy, nonatomic) NSNumber *sliceUnitCount;
@property (copy, nonatomic) NSNumber *sliceCount;

@end
