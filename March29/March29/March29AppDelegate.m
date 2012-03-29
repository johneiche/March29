//
//  March29AppDelegate.m
//  March29
//
//  Created by John Eiche on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "March29AppDelegate.h"
#import "View.h"

@implementation March29AppDelegate

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // UIApplication *application = [UIApplication sharedApplication];
    // application.statusBarHidden = YES;
    
    // [[UIApplication sharedApplication] setStatusBarHidden:YES];   
    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIScreen *screen = [UIScreen mainScreen];
    CGRect applicationFrame = screen.applicationFrame;
    CGRect bounds = screen.bounds;
    
    NSLog(@"application:didFinishLauchingWithOptions: bounds.origin == (%g, %g), bounds.size == %g x %g",
          bounds.origin.x,
          bounds.origin.y,
          bounds.size.width,
          bounds.size.height);    
    
    view = [[View alloc] initWithFrame:applicationFrame];
    self.window = [[UIWindow alloc] initWithFrame:bounds];
    /*                                                  // things to try 19.
     view = [[View alloc]                                // things to try 19.
     initWithFrame: applicationFrame             // things to try 19.
     string: @"HelloWorld!"                      // things to try 19.
     backgroundColor: [UIColor whiteColor]       // things to try 19.
     point: CGPointZero                          // things to try 19.
     font: [UIFont systemFontOfSize: 16.0]       // things to try 19.
     ];                                          // things to try 19.
     */                                                  // things to try 19.
    NSLog(@"application:didFinishLauchingWithOptions: applicationFrame.origin == (%g, %g), applicationFrame.size == %g x %g",
          applicationFrame.origin.x,
          applicationFrame.origin.y,
          applicationFrame.size.width,
          applicationFrame.size.height);   
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"applicationWillResignActive:");             // things to try 17
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"applicationDidEnterBackground:");           // things to try 17
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground:");          // things to try 17
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"applicationDidBecomeActive:");              // things to try 17
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"applicationWillTerminate:");               // things to try 17
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
