//
//  ShiPingCollectionViewCell.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/29.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 视频cell
@interface ShiPingCollectionViewCell : UICollectionViewCell

/// 配置cell
/// @param playUrl 播放url
/// @param backUrl 第一帧图片url
- (void)layoutWithShiPingUrl:(NSString *)playUrl backUrl:(NSString *)backUrl;

@end

NS_ASSUME_NONNULL_END
