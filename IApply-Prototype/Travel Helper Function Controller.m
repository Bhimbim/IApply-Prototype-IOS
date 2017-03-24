//
//  Travel Helper Function Controller.m
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/9/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import "Travel Helper Function Controller.h"


// INTERFACE

@interface TravelHelperFunctionController ()

@end


// IMPLEMENTATION

@implementation TravelHelperFunctionController


    /* TRANSLATOR */

    - (NSString *) translateDictionaryToJSON:(NSMutableDictionary *)dictionaryJSON
    {
        NSError *error;
        NSData *dataJSON = [NSJSONSerialization dataWithJSONObject:dictionaryJSON options:NSJSONWritingPrettyPrinted error:&error];
        NSString *stringJSON;
        
        if (dataJSON)
        {
            stringJSON = [[NSString alloc] initWithData:dataJSON encoding:NSUTF8StringEncoding];
            NSLog(@"Travel Helper Function | translateDictionaryToJSON, output: %@", stringJSON);
        }
        else
        {
            NSLog(@"Travel Helper Function | translateDictionaryToJSON, error: %@", error);
            stringJSON = @"";
        }
        
        return stringJSON;
    }

    - (NSMutableDictionary *) translateJSONToDictionary:(NSString *)stringJSON
    {
        NSString *decoded= [stringJSON stringByRemovingPercentEncoding];
        NSString *withoutNewline = [decoded stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString *tobeConvertedToData = [withoutNewline stringByReplacingOccurrencesOfString: @" " withString:@""];
        NSData *dataJSON = [tobeConvertedToData dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error;
        NSMutableDictionary *dictionaryJSON = [NSJSONSerialization JSONObjectWithData:dataJSON options:kNilOptions error:&error];
        NSLog(@"Travel Helper Function | translateJSONToDictionary, output: %@", dictionaryJSON);
        
        return dictionaryJSON;
    }

    - (NSMutableDictionary *) translateURLQueryToDictionary:(NSString *)stringURLQuery
    {
        NSMutableArray *arrayURLQuery = [[stringURLQuery componentsSeparatedByString:@"&"] mutableCopy];
        NSMutableDictionary *dictionaryURL = [[NSMutableDictionary alloc] init];
        NSMutableArray *arrayURLQueryItem;
        
        for (int i = 0; i < arrayURLQuery.count; i++)
        {
            arrayURLQueryItem = [[[arrayURLQuery objectAtIndex:i] componentsSeparatedByString:@"="] mutableCopy];
            [dictionaryURL setObject:[arrayURLQueryItem objectAtIndex:1] forKey:[arrayURLQueryItem objectAtIndex:0]];
        }
        
        return dictionaryURL;
    }


@end
