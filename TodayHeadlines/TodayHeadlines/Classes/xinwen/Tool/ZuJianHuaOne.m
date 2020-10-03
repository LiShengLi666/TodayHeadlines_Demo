//
//  ZuJianHuaOne.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/30.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "ZuJianHuaOne.h"

@implementation ZuJianHuaOne

#pragma mark target action
+ (__kindof UIViewController *)zuJianHua:(NSDictionary *)url{
    
    Class detailCls = NSClassFromString(@"WKWebViewController");
   #pragma clang diagnostic push
   #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    UIViewController *controller = [[detailCls alloc] performSelector:NSSelectorFromString(@"initWithUrl:") withObject:url];
#pragma clang diagnostic pop
    return controller;
}

#pragma mark url scheme
+ (NSMutableDictionary *)mediatorCache{
    static NSMutableDictionary *cache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = @{}.mutableCopy;
    });
    return cache;
}

+ (void)registerScheme:(NSString *)scheme processBlock:(GTMediatorProcessBlock)processBlock{
    if (scheme && processBlock) {
        [[[self class] mediatorCache] setObject:processBlock forKey:scheme];
    }
}

+ (void)openUrl:(NSString *)url params:(NSDictionary *)params{
    GTMediatorProcessBlock block = [[[self class] mediatorCache] objectForKey:url];
    if (block) {
        block(params);
    }
}
@end
