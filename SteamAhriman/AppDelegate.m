//
//  AppDelegate.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 20/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//!!!!!!!!!!!!!!!!!!!!!
//
//      STEAM API KEY
//
//  39FC7EC5B3E3C4C35E630A527B879294
//
//!!!!!!!!!!!!!!!!!!!!!
#import "AppDelegate.h"

#import "CommunityRootController.h"

#import "SteamStoreRootController.h"

#import "YourStuffRootController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UIViewController *profileController = [[[YourStuffRootController alloc] initWithNibName:@"YourStuffRootController" bundle:nil] autorelease];
    UIViewController *communityController = [[[CommunityRootController alloc] initWithNibName:@"CommunityRootController" bundle:nil] autorelease];
    UIViewController *storeController = [[[SteamStoreRootController alloc] initWithNibName:@"SteamStoreRootController" bundle:nil] autorelease];
    
    UINavigationController* navigationControllerProfile = [[UINavigationController alloc] initWithRootViewController:profileController];
    UINavigationController* navigationControllerCommunity = [[UINavigationController alloc] initWithRootViewController:communityController];
    UINavigationController* navigationControllerStore = [[UINavigationController alloc] initWithRootViewController:storeController];
    
    self.tabBarController = [[[UITabBarController alloc] init] autorelease];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:navigationControllerProfile, navigationControllerCommunity, navigationControllerStore, nil];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
