//
//  MMAppDelegate.m
//  Mentor
//
//  Created by Rajiev Timal on 6/1/13.
//  Copyright (c) 2013 MentorWare. All rights reserved.
//

#import "MMAppDelegate.h"

#import "MMFriendsListViewController.h"
#import "MMWallViewController.h"
#import "MMProfileViewController.h"
#import "MMPersonSearchViewController.h"
#import "MMLoginViewController.h"

@implementation MMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    MMWallViewController *wall = [[MMWallViewController alloc] initWithNibName:@"MMWallViewController" bundle:nil];
    MMProfileViewController *profile = [[MMProfileViewController alloc] initWithNibName:@"MMProfileViewController" bundle:nil];
    MMPersonSearchViewController *pf = [[MMPersonSearchViewController alloc] initWithNibName:@"MMPersonSearchViewController" bundle:nil];
    UINavigationController *personFinder = [[UINavigationController alloc] init];
    personFinder.viewControllers = @[pf];
    
    MMLoginViewController *login = [[MMLoginViewController alloc] initWithNibName:@"MMLoginViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:107.f/255.f green:186.f/255.f blue:112.f/255.f alpha:1.f]];
    NSString *loggedIn = [[NSUserDefaults standardUserDefaults]objectForKey:@"loggedIn"];
    NSLog(@"%@", loggedIn);
    if(loggedIn == NULL) {
        self.tabBarController.viewControllers = @[login, personFinder, profile];
    } else {
        self.tabBarController.viewControllers = @[wall, personFinder, profile];
    }
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
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
