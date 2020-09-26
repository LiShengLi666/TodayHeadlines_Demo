//
//  AppDelegate.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/26.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor whiteColor];
    vc1.tabBarItem.title = @"新闻";
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor redColor];
    vc2.tabBarItem.title = @"视频";

    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor yellowColor];
    vc3.tabBarItem.title = @"推荐";

    UIViewController *vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = [UIColor blueColor];
    vc4.tabBarItem.title = @"我的";

    [tabBarController setViewControllers:@[vc1,vc2,vc3,vc4]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyWindow];
    
    return YES;
}



@end
