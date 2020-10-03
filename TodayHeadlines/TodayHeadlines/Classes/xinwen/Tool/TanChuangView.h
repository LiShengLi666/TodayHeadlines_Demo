//
//  TanChuangView.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TanChuangView : UIView

/// 展示浮层
/// @param callBack <#callBack description#>
- (void)showWithCallBack:(dispatch_block_t)callBack;
@end

NS_ASSUME_NONNULL_END
