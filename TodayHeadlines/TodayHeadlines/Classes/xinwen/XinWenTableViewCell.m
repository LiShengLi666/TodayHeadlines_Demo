//
//  XinWenTableViewCell.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "XinWenTableViewCell.h"

@implementation XinWenTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.imageView.userInteractionEnabled = YES;
        [self.imageView addGestureRecognizer:({
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickImage)];
            tap;
        })];
    }
    return self;
}

- (void)clickImage{

    if (self.delegate && [self.delegate respondsToSelector:@selector(tableViewCell:clickImage:)]) {
        
        [self.delegate tableViewCell:self clickImage:@"我就是测试一下代理"];
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
