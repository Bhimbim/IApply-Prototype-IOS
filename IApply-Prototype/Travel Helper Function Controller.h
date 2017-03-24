//
//  Travel Helper Function Controller.h
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/9/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import <UIKit/UIKit.h>


// INTERFACE

@interface TravelHelperFunctionController : NSObject


    /* TRANSLATOR */

    - (NSString *) translateDictionaryToJSON : (NSMutableDictionary *) dictionaryJSON;

    - (NSMutableDictionary *) translateJSONToDictionary : (NSString *) stringJSON;

    - (NSMutableDictionary *) translateURLQueryToDictionary : (NSString *) stringURLQuery;


@end
