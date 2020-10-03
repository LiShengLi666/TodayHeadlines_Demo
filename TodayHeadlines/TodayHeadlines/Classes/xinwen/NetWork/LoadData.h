//
//  LoadData.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/28.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 网络层
typedef void(^LoadDataFinishBlock) (BOOL success,NSArray *dataArray);
@interface LoadData : NSObject


/// 对外公开的网络接口
/// @param finishBlock 完成回调
+ (void)loadDataWithFinishBlock:(LoadDataFinishBlock)finishBlock;

@end

NS_ASSUME_NONNULL_END
