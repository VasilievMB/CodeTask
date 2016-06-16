//
//  MTLJSONAdapter+CDTExtension.m
//  CodeTask
//
//  Created by Vasiljev M.B. on 16/06/16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "MTLJSONAdapter+CDTExtension.h"

@implementation MTLJSONAdapter (CDTExtension)

- (NSArray *)cdt_modelsFromJSONArray:(NSArray *)JSONArray error:(NSError **)error {
    NSMutableArray *models = [NSMutableArray arrayWithCapacity:JSONArray.count];
    for (NSDictionary *JSONDictionary in JSONArray){
        MTLModel *model = [self modelFromJSONDictionary:JSONDictionary error:error];
        
        if (model == nil) {
            return nil;
        }
        
        [models addObject:model];
    }
    
    return [models copy];
}

@end
