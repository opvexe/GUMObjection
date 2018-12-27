//
//  GUHomeViewController.m
//  ObjectionMoudle
//
//  Created by FaceBook on 2018/12/27.
//  Copyright © 2018年 FaceBook. All rights reserved.
//

#import "GUHomeViewController.h"
#import "GUModuleProtocol.h"
#import <JSObjection.h>
@interface GUHomeViewController ()

@end

@implementation GUHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Home";
    
    UIButton *iv = [UIButton buttonWithType:UIButtonTypeCustom];
    iv.frame = CGRectMake(100, 100, 100, 40.0f);
    iv.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:iv];
    [iv addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)Click:(UIButton *)sender{
    /// 根据后台配地址跳转
    UIViewController <GUChatModuleProtocol> *chatController = [[JSObjection defaultInjector] getObject:@protocol(GUChatModuleProtocol) named:@"pushNextController"];
    chatController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:chatController animated:YES];
}
@end
