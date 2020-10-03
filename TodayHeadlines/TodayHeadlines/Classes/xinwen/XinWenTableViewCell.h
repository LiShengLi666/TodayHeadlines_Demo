//
//  XinWenTableViewCell.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// cell代理
@protocol XinWenTableViewCellDelegat <NSObject>


/// 点击头像回调
/// @param tableViewCell 对象
/// @param str 凑数的，可以忽略
- (void)tableViewCell:(UITableViewCell *)tableViewCell clickImage:(NSString *)str;

@end

/// 新闻cell
@interface XinWenTableViewCell : UITableViewCell

/// 代理对象
@property (nonatomic, weak) id<XinWenTableViewCellDelegat> delegate;

@end

NS_ASSUME_NONNULL_END
