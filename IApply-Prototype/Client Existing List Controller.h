//
//  ViewController.h
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//

// IMPORT

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Travel Helper Function Controller.h"
#import "String Constant.h"


// INTERFACE

@interface ClientExistingListController : UIViewController


    /* VARIABLE */

    @property (nonatomic, readwrite, copy) NSString *stringURLScheme;
    @property (nonatomic, readwrite, copy) NSString *stringURLQuery;
    @property (nonatomic, readwrite, copy) NSString *stringURLQueryLoginSession;
    @property (nonatomic, readwrite, copy) NSString *stringURLQueryAgentProfile;
    @property (nonatomic, readwrite, copy) NSString *stringURLQueryClientProfile;

    @property (nonatomic, readwrite, copy) NSMutableDictionary *dictionaryURLQuery;
    @property (nonatomic, readwrite, copy) NSMutableDictionary *dictionaryAgentProfile;
    @property (nonatomic, readwrite, copy) NSMutableDictionary *dictionaryClientProfile;


    /* LABEL */

    @property (nonatomic, weak) IBOutlet UILabel *labelScheme;


    /* TEXTVIEW */

    @property (nonatomic, weak) IBOutlet UITextView *textViewQuery;


    /* OBJECT */

    @property (nonatomic, copy, readwrite) TravelHelperFunctionController *objectTravelHelper;


    /* LABEL */

    @property (nonatomic, weak) IBOutlet UIButton *buttonBack;


@end
