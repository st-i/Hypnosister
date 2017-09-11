//
//  AppDelegate.m
//  Hypnosister
//
//  Created by iStef on 16.11.16.
//  Copyright © 2016 Stefanov. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];//creating a window
    //CGRect firstFrame=CGRectMake(160, 240, 100, 150);//creating a frame of a BNRHypnosisView
    //CGRect secondFrame=CGRectMake(20, 30, 50, 50);
    //CGRect firstFrame=self.window.bounds;
    
    //BNRHypnosisView *firstView=[[BNRHypnosisView alloc]initWithFrame:firstFrame];//an instance of BNRHV
    //BNRHypnosisView *secondView=[[BNRHypnosisView alloc]initWithFrame:secondFrame];
    
    //Create CGRects for frames
    CGRect screenRect=self.window.bounds;
    CGRect bigRect=screenRect;
    bigRect.size.width*=2.0;
    //bigRect.size.height*=2.0;
    
    //Create a screen-sized scroll view and add it to the window
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:screenRect];
    scrollView.pagingEnabled=YES;
    [self.window addSubview:scrollView];
    
    //Create a super-sized hypnosis view and add it to the scroll view
    //BNRHypnosisView *hypnosisView=[[BNRHypnosisView alloc]initWithFrame:bigRect];
    //Create a screen-sized hypnosis view just off screen to the right
    BNRHypnosisView *hypnosisView=[[BNRHypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:hypnosisView];
    
    //Add a second screen-sized hypnosis view just off screen to the right
    screenRect.origin.x+=screenRect.size.width;
    BNRHypnosisView *anotherView=[[BNRHypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    //Tell the scroll view how big its content area is
    scrollView.contentSize=bigRect.size;
    
    UIViewController *viewController=[[UIViewController alloc]init];//in the case of empty application
    //viewController.view=firstView;
    viewController.view=scrollView;//in the case of empty application
    self.window.rootViewController=viewController;//in the case of empty application
    
    //firstView.backgroundColor=[UIColor redColor];//setting the color to red
    //secondView.backgroundColor=[UIColor blueColor];
    
    //[self.window addSubview:scrollView];//adding BNRHV as a subview of the window to make it part of the view hierarchy
    //[self.window addSubview:secondView];
    //[firstView addSubview:secondView];
    
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
