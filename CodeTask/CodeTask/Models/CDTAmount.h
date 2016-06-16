//
//  CDTAmount.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface CDTAmount : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSString *unit;
@property (copy, nonatomic) NSNumber *value;

@end
