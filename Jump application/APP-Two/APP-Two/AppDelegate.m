//
//  AppDelegate.m
//  APP-Two
//
//  Created by  on 17/2/14.
//  Copyright © 2017年 . All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarViewController.h"
#import "NavigationController.h"
#import "SecendSecendViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotatio
{
    //若跳转应用没有指定界面、没有参数，则此方法可以不写
    
    /** 此代码段可实现——跳转单不同的tabBarItem－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
     // 1.获取TabBarViewController
     TabBarViewController *rootTB = (TabBarViewController *)self.window.rootViewController;
     //如果跳转的界面在第二或第三个item中则rootTB.selectedIndex = 1或2，如果跳转到第一个模块就不需要此步
     rootTB.selectedIndex = 1;
     */
    /**此代码段实现——“跳转应用没有指定界面、有参数”－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
     
     NSString *urlStr = [url absoluteString];
     if ([urlStr hasPrefix:@"TravelsRate://"]) {
     NSLog(@"TestAppDemo1 request params: %@", urlStr);
     urlStr = [urlStr stringByReplacingOccurrencesOfString:@"TravelsRate://" withString:@""];
     NSArray *paramArray = [urlStr componentsSeparatedByString:@"&"];
     NSLog(@"paramArray: %@", paramArray);
     NSMutableDictionary *paramsDic = [[NSMutableDictionary alloc] initWithCapacity:0];
     for (int i = 0; i < paramArray.count; i++) {
     NSString *str = paramArray[i];
     NSArray *keyArray = [str componentsSeparatedByString:@"="];
     NSString *key = keyArray[0];
     NSString *value = keyArray[1];
     [paramsDic setObject:value forKey:key];
     NSLog(@"key:%@ ==== value:%@", key, value);
     }
     
     }
     */
    /** 此代码段实现——“跳转应用指定界面、无参”－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
     // 1.获取TabBarViewController
     TabBarViewController *rootTB = (TabBarViewController *)self.window.rootViewController;
     //如果跳转的界面在第二或第三个item中则rootTB.selectedIndex = 1或2，如果跳转到第一个模块就不需要此步
     rootTB.selectedIndex = 1;
     //2.获得NavigationController
     UINavigationController * mainVC = rootTB.childViewControllers[rootTB.selectedIndex] ;
     //3.每次跳转前必须是在根控制器(如果不在在控制器跳转的话可能会出现bug，eg：应用Two在指定界面时，应用One跳转再到指定界面会出现重复界面)
     [mainVC popToRootViewControllerAnimated:NO];
     //将我们的storyBoard实例化，“Main”为StoryBoard的名称
     UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     //将第二个控制器实例化，"SecondViewController"为我们设置的控制器的ID
     SecendSecendViewController *secondSVC = [mainStoryBoard instantiateViewControllerWithIdentifier:@"SecendSecendViewController"];
     //跳转事件
     [mainVC pushViewController:secondSVC animated:YES];
     也可根据segue标示进行跳转(界面之间的连线设置identifier)
     // [mainVC performSegueWithIdentifier:@"XXX" sender:nil];
     
     */
    
    /** 此代码段实现——“跳转应用指定界面、有参数”－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
     // 1.获取TabBarViewController
     TabBarViewController *rootTB = (TabBarViewController *)self.window.rootViewController;
     //如果跳转的界面在第二或第三个item中则rootTB.selectedIndex = 1或2，如果跳转到第一个模块就不需要此步
     rootTB.selectedIndex = 1;
     //2.获得NavigationController
     UINavigationController * mainVC = rootTB.childViewControllers[rootTB.selectedIndex] ;
     //3.每次跳转前必须是在根控制器(如果不在在控制器跳转的话可能会出现bug，eg：应用Two在指定界面时，应用One跳转再到指定界面会出现重复界面)
     [mainVC popToRootViewControllerAnimated:NO];
     //将我们的storyBoard实例化，“Main”为StoryBoard的名称
     UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     //将第二个控制器实例化，"SecondViewController"为我们设置的控制器的ID
     SecendSecendViewController *secondSVC = [mainStoryBoard instantiateViewControllerWithIdentifier:@"SecendSecendViewController"];
     //跳转事件
     [mainVC pushViewController:secondSVC animated:YES];
     也可根据segue标示进行跳转(界面之间的连线设置identifier)
     // [mainVC performSegueWithIdentifier:@"XXX" sender:nil];
     NSString *urlStr = [url absoluteString];
     if ([urlStr hasPrefix:@"APPTwo://"]) {
     urlStr = [urlStr stringByReplacingOccurrencesOfString:@"APPTwo://secendToSecend?" withString:@""];
     NSArray *paramArray = [urlStr componentsSeparatedByString:@"&"];
     NSLog(@"paramArr: %@", paramArray);
     NSMutableDictionary *paramsDic = [[NSMutableDictionary alloc] initWithCapacity:0];
     for (int i = 0; i < paramArray.count; i++) {
     NSString *str = paramArray[i];
     NSArray *keyArray = [str componentsSeparatedByString:@"="];
     NSString *key = keyArray[0];
     NSString *value = keyArray[1];
     [paramsDic setObject:value forKey:key];
     NSLog(@"key:%@  value:%@", key, value);
     }
     }
     
     */
    
    return YES;
}
@end
