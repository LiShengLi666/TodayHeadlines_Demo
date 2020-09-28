//
//  TanChuangView.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "TanChuangView.h"

@interface TanChuangView ()

/**  */
@property (nonatomic, strong) UIView *backView;

/**  */
@property (nonatomic, strong) UIView *deleteView;

/**  */
@property (nonatomic, copy) dispatch_block_t deleteblock;

@end

@implementation TanChuangView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:({
            self.backView = [[UIView alloc] initWithFrame:self.frame];
            self.backView.alpha = 0.5;
            self.backView.backgroundColor = [UIColor blackColor];
            self.backView;
        })];
        
        [self addSubview:({
            self.deleteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
            self.deleteView.backgroundColor = [UIColor redColor];
            [self.deleteView addGestureRecognizer:({
                [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickRemove)];
            })];
            self.deleteView;
        })];
    }
    return self;
}



- (void)showWithCallBack:(dispatch_block_t)callBack{

    _deleteblock = callBack;

    [[UIApplication sharedApplication].delegate.window addSubview:self];
    
    [UIView animateWithDuration:0.5 animations:^{
       
        self.deleteView.frame = CGRectMake((self.frame.size.width - 200)/2, (self.frame.size.height - 300)/2, 200, 300);
    }];
}

- (void)clickRemove{
    
    if (self.deleteblock) {
        self.deleteblock();
    }
    
   [self removeFromSuperview];
}

@end
