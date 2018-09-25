//
//  AppDelegate.m
//  控制器view的默认颜色
//
//  Created by apple on 16/6/22.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 这个Demo没有storyboard文件，要在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空，代表不用storyboard文件。
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(100, 100);
    [self.window addSubview:btn];
    
    /**
     如果新创建的视图控制器不设置透明度和背景颜色的话则该视图控制器的背景颜色默认的是clearColor；
     clearColor和完全透明(alpha = 0)还是有差别的。如果当前视图控制器的背景颜色是clearColor而且当透明度不为0(alpha ≠ 0)的时候，则运行之后可以把此视图控制器后面的颜色透过来，但是用户无法和它后面的视图进行交互（不能点击它后面视图上的控件），用户的每次交互都是和当前这个视图控制器进行交互的。如果设置当前视图控制器的透明度为0(alpha = 0)，此时不管背景颜色设置的是什么颜色，则运行之后可以把此视图控制器后面的颜色透过来，并且用户可以与它后面的视图进行交互（可以点击到它后面视图上的控件）。
     */
    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view.backgroundColor = [UIColor clearColor];
//    vc.view.backgroundColor = [UIColor yellowColor];
//    vc.view.alpha = 0;
    
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
