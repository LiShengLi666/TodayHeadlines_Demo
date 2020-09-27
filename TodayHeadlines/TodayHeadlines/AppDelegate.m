//
//  AppDelegate.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/26.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "XinWenViewController.h"
#import "ShiPingViewController.h"
#import "TuiJianViewController.h"
#import "WoDeViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self two];
    
    return YES;
}


/**
 一个标签控制器装四个导航控制器，每个导航控制器装一个视图控制器
 优点：苹果推荐
 缺点：
 1.标签控制器不会隐藏，需要重写自定义的UINavigationController中的push和pop方法
 处理tabbar的显示隐藏
 2.标签控制器使用自定义的图片和文字代替系统的图片文字时，需要使用self.navigationItem.title的方式设置导航文字，如果使用self.title会出现bug，标签控制器会额外出现蓝色的文字。
 */
- (void)one{
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    XinWenViewController *xinVC = [[XinWenViewController alloc] init];
    UINavigationController *xinNavigation = [[UINavigationController alloc] initWithRootViewController:xinVC];
    xinVC.view.backgroundColor = [UIColor whiteColor];
    xinVC.navigationItem.title = @"新闻";
    xinNavigation.tabBarItem.title = @"新闻";
    
    ShiPingViewController *shiVC = [[ShiPingViewController alloc] init];
    UINavigationController *shiNavigation = [[UINavigationController alloc] initWithRootViewController:shiVC];
    shiVC.view.backgroundColor = [UIColor redColor];
    shiVC.navigationItem.title = @"视频";
    shiNavigation.tabBarItem.title = @"视频";
    
    TuiJianViewController *tuiVC = [[TuiJianViewController alloc] init];
    UINavigationController *tuiNavigation = [[UINavigationController alloc] initWithRootViewController:tuiVC];
    tuiVC.view.backgroundColor = [UIColor yellowColor];
    tuiVC.navigationItem.title = @"推荐";
    tuiNavigation.tabBarItem.title = @"推荐";
    
    WoDeViewController *woVC = [[WoDeViewController alloc] init];
    UINavigationController *woNavigation = [[UINavigationController alloc] initWithRootViewController:woVC];
    woVC.view.backgroundColor = [UIColor blueColor];
    woVC.navigationItem.title = @"我的";
    woNavigation.tabBarItem.title = @"我的";
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[xinNavigation,shiNavigation,tuiNavigation,woNavigation]];
    tabBarController.delegate = self;
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
}


/**
一个导航控制器装一个标签控制器，标签控制器装四个视图控制器
优点：主流APP都采用这种，不需要隐藏标签控制器了。
缺点：共享一个导航条，而且常规方式设置不了导航栏文字。
*/
- (void)two{
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    XinWenViewController *xinVC = [[XinWenViewController alloc] init];
    ShiPingViewController *shiVC = [[ShiPingViewController alloc] init];
    TuiJianViewController *tuiVC = [[TuiJianViewController alloc] init];
    WoDeViewController *woVC = [[WoDeViewController alloc] init];

    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[xinVC,shiVC,tuiVC,woVC]];
    tabBarController.delegate = self;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
}

#pragma mark - UITabBarController代理方法
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    NSLog(@"切换UITabBarController");
}
@end
