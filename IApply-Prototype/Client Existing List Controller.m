//
//  ViewController.m
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import "Client Existing List Controller.h"


// INTERFACE

@interface ClientExistingListController ()

@end


// IMPLEMENTATION

@implementation ClientExistingListController


    /* VIEW DID LOAD */

    - (void)viewDidLoad
    {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // INITIALIZATION
        
        _objectTravelHelper = [[TravelHelperFunctionController alloc] init];
        [self registerForNotifications];
    }


    /* DID RECEIVE MEMORY WARNING */

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }


    /* NOTIFICATION */

    - (void)registerForNotifications
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(triggerByURL:) name:NOTIFICATION_KEY_TRIGGERURL object:nil];
    }

    -(void)triggerByURL:(NSNotification*)_notification
    {
        NSDictionary *dictionaryURL=[[_notification userInfo] objectForKey:NOTIFICATION_KEY_TRIGGERURL];
        _stringURLScheme = [dictionaryURL valueForKey:TRAVEL_KEY_SCHEME];
        _stringURLQuery = dictionaryURL[TRAVEL_KEY_QUERY];
        
        _stringURLScheme = [[NSUserDefaults standardUserDefaults] stringForKey:TRAVEL_KEY_URLSCHEME];
        _stringURLQuery = [[NSUserDefaults standardUserDefaults] stringForKey:TRAVEL_KEY_URLQUERY];
        _dictionaryURLQuery = [_objectTravelHelper translateURLQueryToDictionary:_stringURLQuery];
        _stringURLQueryLoginSession = [_dictionaryURLQuery objectForKey:JSON_KEY_LOGINSESSION];
        _stringURLQueryAgentProfile = [_dictionaryURLQuery objectForKey:JSON_KEY_AGENTPROFILE];
        _stringURLQueryClientProfile = [_dictionaryURLQuery objectForKey:JSON_KEY_CLIENTPROFILE];
        
        _dictionaryAgentProfile = [_objectTravelHelper translateJSONToDictionary:_stringURLQueryAgentProfile];
        _dictionaryClientProfile = [_objectTravelHelper translateJSONToDictionary:_stringURLQueryClientProfile];
        
        NSLog(@"Client Existing List | triggerByURL, stringURLQueryLoginSession: %@", _stringURLQueryLoginSession);
        NSLog(@"Client Existing List | triggerByURL, dictionaryAgentProfile: %@", _stringURLQueryAgentProfile);
        NSLog(@"Client Existing List | triggerByURL, dictionaryClientProfile: %@", _stringURLQueryClientProfile);
        
        _labelScheme.text = _stringURLScheme;
        _textViewQuery.text = _stringURLQuery;
    }


    // IBACTION

    - (IBAction) goToIQuote: (id) sender
    {
        
    }


    // VIEW DID APPEAR

    -(void) viewDidAppear:(BOOL)animated
    {
        _stringURLScheme = [[NSUserDefaults standardUserDefaults] stringForKey:TRAVEL_KEY_URLSCHEME];
        _stringURLQuery = [[NSUserDefaults standardUserDefaults] stringForKey:TRAVEL_KEY_URLQUERY];
        
        [self registerForNotifications];
    }


@end
