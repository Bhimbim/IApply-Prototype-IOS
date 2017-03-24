//
//  AppDelegate.h
//  IApply-Prototype
//
//  Created by Ibrahim Aziz Tejokusumo on 2/8/17.
//  Copyright © 2017 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


// INTERFACE

@interface AppDelegate : UIResponder <UIApplicationDelegate>


    /* VARIABLE */

    @property (strong, nonatomic) UIWindow *window;

    @property (readonly, strong) NSPersistentContainer *persistentContainer;

    @property (strong) NSString *stringURLScheme;
    @property (strong) NSString *stringURLQuery;

    @property (nonatomic, copy, readwrite) IBOutlet UIStoryboard *storyboardMain;


    /* FUNCTION */

    - (void)saveContext;

    - (BOOL)application:(UIApplication *)application
                openURL:(NSURL *)url
      sourceApplication:(NSString *)sourceApplication
             annotation:(id)annotation;


@end
