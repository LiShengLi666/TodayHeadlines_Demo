//
//  ShiPingCollectionViewCell.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/29.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "ShiPingCollectionViewCell.h"
#import <AVFoundation/AVFoundation.h>

@interface ShiPingCollectionViewCell ()

///
@property (nonatomic, strong) UIImageView *backImg;

///
@property (nonatomic, strong) UIImageView *playImg;

///
@property (nonatomic, copy) NSString *playUrl;

@end

@implementation ShiPingCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _backImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
            _backImg.backgroundColor = [UIColor redColor];
            _backImg.userInteractionEnabled = YES;
            _backImg;
        })];

        [_backImg addSubview:({
            _playImg = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width - 50) / 2, (frame.size.height - 50) / 2, 50, 50)];
            _playImg.backgroundColor = [UIColor yellowColor];
            _playImg.userInteractionEnabled = YES;
//            _playImg.image = [UIImage imageNamed:@""];
            _playImg;
        })];

        [_playImg addGestureRecognizer:({
            [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playEven)];
        })];

        // 注册监听播放完毕的通知
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boFangWanBi) name:AVPlayerItemDidPlayToEndTimeNotification object:nil];
    }
    return self;
}


/// 销毁通知
- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


/// 播放完毕
- (void)boFangWanBi{
    NSLog(@"播放完毕");
}

- (void)playEven {
    NSLog(@"播放");

//    // 完整版
//    NSURL *url = [NSURL URLWithString:_playUrl];
//    // 提供格式无关的媒体数据,截取静态图片/转码/删减,编辑声音、透明度、尺寸
//    AVAsset *asset = [AVAsset assetWithURL:url];
//    // 当前的播放时间,播放状态,播放资源的基本操作
//    AVPlayerItem *playItem = [AVPlayerItem playerItemWithAsset:asset];
//    // 开始/暂停,封装对播放资源的简单操作
//    AVPlayer *player = [AVPlayer playerWithPlayerItem:playItem];
//    // 播放器画面
//    AVPlayerLayer *playLayer = [AVPlayerLayer playerLayerWithPlayer:player];
//    // 播放器大小
//    playLayer.frame = _backImg.bounds;
//    // 添加到视图上
//    [_backImg.layer addSublayer:playLayer];
//    // 开始播放
//    [player play];

    /**
        // 简单版，无需操作视频的逻辑
        NSURL *url = [NSURL URLWithString:_playUrl];
        // 开始/暂停,封装对播放资源的简单操作
        AVPlayer *player = [AVPlayer playerWithURL:url];
        // 播放器画面
        AVPlayerLayer *playLayer = [AVPlayerLayer playerLayerWithPlayer:player];
        // 播放器大小
        playLayer.frame = _backImg.bounds;
        // 添加到视图上
        [_backImg.layer addSublayer:playLayer];
        // 开始播放
        [player play];
    */
}

- (void)layoutWithShiPingUrl:(NSString *)playUrl backUrl:(NSString *)backUrl {
//    self.backImg.image = [UIImage imageNamed:backUrl];
    _playUrl = playUrl;
}

@end
