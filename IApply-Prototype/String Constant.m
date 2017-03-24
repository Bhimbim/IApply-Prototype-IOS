//
//  String Constant.m
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/9/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//

#import "String Constant.h"

@interface StringConstant ()

@end

@implementation StringConstant


    /* CHARACTER */

    NSString* const CHARACTER_DASH = @" ";
    NSString* const CHARACTER_KRES = @"#";
    NSString* const CHARACTER_DOUBLEDOT = @" : ";


    /* NOTIFICATION */

    NSString* const NOTIFICATION_KEY_TRIGGERURL = @"triggerByURL";


    /* JSON KEY */

    NSString* const JSON_KEY_LOGINSESSION = @"loginSession";
    NSString* const JSON_KEY_AGENTPROFILE = @"JSONAgentProfile";
    NSString* const JSON_KEY_CLIENTPROFILE = @"JSONClientProfile";

    NSString* const JSON_KEY_AGENTCODE = @"agentCode";
    NSString* const JSON_KEY_AGENTNAME = @"agentName";
    NSString* const JSON_KEY_AGENTEMAIL = @"agentEmail";
    NSString* const JSON_KEY_AGENTSTATUS = @"agentStatus";

    NSString* const JSON_KEY_CLIENTCODE = @"clientCode";
    NSString* const JSON_KEY_CLIENTNAME = @"clientName";
    NSString* const JSON_KEY_CLIENTEMAIL = @"clientEmail";
    NSString* const JSON_KEY_CLIENTSTATUS = @"clientStatus";


    /* TRAVEL */

    NSString* const TRAVEL_KEY_SCHEME = @"scheme";
    NSString* const TRAVEL_KEY_QUERY = @"query";
    NSString* const TRAVEL_VALUE_SCHEME = @"IApply-Prototype";
    NSString* const TRAVEL_KEY_URLSCHEME = @"stringURLScheme";
    NSString* const TRAVEL_KEY_URLQUERY = @"stringURLQuery";


@end
