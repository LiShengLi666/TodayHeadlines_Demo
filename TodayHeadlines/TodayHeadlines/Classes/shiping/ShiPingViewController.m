//
//  ShiPingViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "ShiPingViewController.h"

@interface ShiPingViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ShiPingViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = @"视频";
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    
    self.tabBarController.title = @"视频";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.创建UICollectionView的流式布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10)/2, 200);
    // 2.创建UICollectionView，并设置布局
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    // 3.注册UICollectionViewCell
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    // 4.遵循代理
    collectionView.delegate = self;
    collectionView.dataSource = self;
    // 5.添加到视图
    [self.view addSubview:collectionView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 20;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}


/**
 定制item的大小，但是有局限性，想真正的实现瀑布流，还是要重写一个流式布局
 */
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.item %3 == 0) {
        return CGSizeMake(self.view.frame.size.width, 50);
    }else{
        return CGSizeMake((self.view.frame.size.width - 10)/2, 200);
    }
}

@end
