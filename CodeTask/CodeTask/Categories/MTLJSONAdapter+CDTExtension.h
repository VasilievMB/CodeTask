//
//  MTLJSONAdapter+CDTExtension.h
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface MTLJSONAdapter (CDTExtension)

- (NSArray *)cdt_modelsFromJSONArray:(NSArray *)JSONArray error:(NSError **)error;

@end
