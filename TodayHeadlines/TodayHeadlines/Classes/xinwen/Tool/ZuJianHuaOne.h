//
//  ZuJianHuaOne.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/30.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 组件化Target - Action
@interface ZuJianHuaOne : NSObject

//target action
+ (__kindof UIViewController *)zuJianHua:(NSDictionary *)url;

//url scheme
typedef void(^GTMediatorProcessBlock)(NSDictionary *params);
+ (void)registerScheme:(NSString *)scheme processBlock:(GTMediatorProcessBlock)processBlock;
+ (void)openUrl:(NSString *)url params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
