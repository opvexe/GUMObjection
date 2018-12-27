//
//  AppDelegate.m
//  ObjectionMoudle
//
//  Created by FaceBook on 2018/12/26.
//  Copyright © 2018年 FaceBook. All rights reserved.
//

#import "AppDelegate.h"
#import "GUModuleProtocol.h"
#import <Objection.h>
#import "GUHomeModule.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController <GUHomeModuleProtocol> *homeController = [[JSObjection defaultInjector] getObject:@protocol(GUHomeModuleProtocol)];
    UINavigationController *homeNavgationController = [[UINavigationController alloc]initWithRootViewController:homeController];
    homeNavgationController.tabBarItem.title = @"Home";
    
    UIViewController <GUChatModuleProtocol> *chatController = [[JSObjection defaultInjector] getObject:@protocol(GUChatModuleProtocol)];
    UINavigationController *chatNavgationControllerr = [[UINavigationController alloc]initWithRootViewController:chatController];
    chatNavgationControllerr.tabBarItem.title = @"Chat";
    
    UITabBarController *tabbarController = [[UITabBarController alloc]init];
    tabbarController.viewControllers = @[homeNavgationController,chatNavgationControllerr];
    
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}



@end
