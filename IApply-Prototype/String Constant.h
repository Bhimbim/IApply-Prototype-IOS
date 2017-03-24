//
//  String Constant.h
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/9/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import <UIKit/UIKit.h>


// INTERFACE

@interface StringConstant : UIViewController


    /* CHARACTER */

    extern NSString* const CHARACTER_DASH;
    extern NSString* const CHARACTER_KRES;
    extern NSString* const CHARACTER_DOUBLEDOT;


    /* NOTIFICATION */

    extern NSString* const NOTIFICATION_KEY_TRIGGERURL;


    /* JSON KEY */

    extern NSString* const JSON_KEY_LOGINSESSION;
    extern NSString* const JSON_KEY_AGENTPROFILE;
    extern NSString* const JSON_KEY_CLIENTPROFILE;

    extern NSString* const JSON_KEY_AGENTCODE;
    extern NSString* const JSON_KEY_AGENTNAME;
    extern NSString* const JSON_KEY_AGENTEMAIL;
    extern NSString* const JSON_KEY_AGENTSTATUS;

    extern NSString* const JSON_KEY_CLIENTCODE;
    extern NSString* const JSON_KEY_CLIENTNAME;
    extern NSString* const JSON_KEY_CLIENTEMAIL;
    extern NSString* const JSON_KEY_CLIENTSTATUS;


    /* TRAVEL */

    extern NSString* const TRAVEL_KEY_SCHEME;
    extern NSString* const TRAVEL_KEY_QUERY;
    extern NSString* const TRAVEL_VALUE_SCHEME;
    extern NSString* const TRAVEL_KEY_URLSCHEME;
    extern NSString* const TRAVEL_KEY_URLQUERY;


@end
