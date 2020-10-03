//
//  XinWenTableViewCell.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "XinWenTableViewCell.h"
#import "UIAdapter.h"

@interface XinWenTableViewCell ()
@property (nonatomic, strong, readwrite) UILabel *titleLabel;
@property (nonatomic, strong, readwrite) UILabel *sourceLabel;
@property (nonatomic, strong, readwrite) UILabel *commentLabel;
@property (nonatomic, strong, readwrite) UILabel *timeLabel;

@property (nonatomic, strong, readwrite) UIImageView *rightImageView;

//@property (nonatomic, strong, readwrite) UIButton *deleteButton;
@end

@implementation XinWenTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        self.imageView.userInteractionEnabled = YES;
//        [self.imageView addGestureRecognizer:({
//            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickImage)];
//            tap;
//        })];

        [self.contentView addSubview:({
            self.titleLabel = [[UILabel alloc] initWithFrame:UIRect(20, 15, 270, 50)];
            self.titleLabel.text = @"标题标题标题标题标题标题";
            self.titleLabel.font = UIFont(16);

            self.titleLabel.textColor = [UIColor blackColor];
            self.titleLabel.numberOfLines = 2;
            self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
            self.titleLabel;
        })];

        [self.contentView addSubview:({
            self.sourceLabel = [[UILabel alloc] initWithFrame:UIRect(20, 70, 50, 20)];
            self.sourceLabel.text = @"我就是";

            self.sourceLabel.font = [UIFont systemFontOfSize:UIAdapter(12)];
            self.sourceLabel.textColor = [UIColor grayColor];
            self.sourceLabel;
        })];

        [self.contentView addSubview:({
            self.commentLabel = [[UILabel alloc] initWithFrame:UIRect(100, 70, 50, 20)];
            self.commentLabel.text = @"撒拉嘿呦";

            self.commentLabel.font = [UIFont systemFontOfSize:12];
            self.commentLabel.textColor = [UIColor grayColor];
            self.commentLabel;
        })];

        [self.contentView addSubview:({
            self.timeLabel = [[UILabel alloc] initWithFrame:UIRect(150, 70, 50, 20)];
            self.timeLabel.text = @"202020202";

            self.timeLabel.font = [UIFont systemFontOfSize:12];
            self.timeLabel.textColor = [UIColor grayColor];
            self.timeLabel;
        })];

        [self.contentView addSubview:({
            self.rightImageView = [[UIImageView alloc] initWithFrame:UIRect(250, 15, 100, 70)];
            self.rightImageView.image = [UIImage imageNamed:@"photo"];
            self.rightImageView.contentMode = UIViewContentModeScaleAspectFit;
            self.rightImageView;
        })];

//                [self.contentView addSubview:({
//                    self.deleteButton = [[UIButton alloc] initWithFrame:UIRect(280, 70, 10, 10)];
//                    [self.deleteButton setTitle:@"X" forState:UIControlStateNormal];
//                    [self.deleteButton setTitle:@"V" forState:UIControlStateHighlighted];
//                    [self.deleteButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//                    [self.deleteButton addTarget:self action:@selector(deleteButtonClick) forControlEvents:UIControlEventTouchUpInside];
//
//        //            self.deleteButton.layer.cornerRadius = self.deleteButton.bounds.size.height / 2;
//        //            self.deleteButton.layer.masksToBounds = YES;
//        //            self.deleteButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
//        //            self.deleteButton.layer.borderWidth = 1;
//
//                    self.deleteButton;
//                })];
    }
    return self;
}

- (void)clickImage {
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
