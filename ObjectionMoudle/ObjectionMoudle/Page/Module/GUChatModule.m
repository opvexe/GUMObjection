//
//  GUChatModule.m
//  ObjectionMoudle
//
//  Created by FaceBook on 2018/12/27.
//  Copyright © 2018年 FaceBook. All rights reserved.
//

#import "GUChatModule.h"
#import "GUChatViewController.h"
#import "GUHomeViewController.h"
#import <Objection.h>
@implementation GUChatModule
+ (void)load {
    JSObjectionInjector *inj = [JSObjection defaultInjector];
    inj = inj ? : [JSObjection createInjector];
    inj =[inj withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:inj];
}
- (void)configure {
    [self bindClass:[GUChatViewController class] toProtocol:@protocol(GUChatModuleProtocol)];
    [self bindClass:[GUChatViewController class] toProtocol:@protocol(GUChatModuleProtocol) named:@"pushNextController"];
}

@end
