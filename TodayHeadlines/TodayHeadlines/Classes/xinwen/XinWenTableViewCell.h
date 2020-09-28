//
//  XinWenTableViewCell.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol XinWenTableViewCellDelegat <NSObject>

- (void)tableViewCell:(UITableViewCell *)tableViewCell clickImage:(NSString *)str;

@end

@interface XinWenTableViewCell : UITableViewCell

/**  */
@property (nonatomic, weak) id<XinWenTableViewCellDelegat> delegate;

@end

NS_ASSUME_NONNULL_END
