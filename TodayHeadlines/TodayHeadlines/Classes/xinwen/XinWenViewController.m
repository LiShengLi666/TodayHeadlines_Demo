//
//  XinWenViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "XinWenViewController.h"
#import "XinWenTableViewCell.h"
#import "TanChuangView.h"
#import "LoadData.h"
#import "ZuJianHuaOne.h"

@interface XinWenViewController ()<UITableViewDataSource, UITableViewDelegate, XinWenTableViewCellDelegat>

/**  */
@property (nonatomic, strong) UITableView *tableView;

/**  */
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation XinWenViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = @"新闻";
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    self.tabBarController.title = @"新闻";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 1.创建UITableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    // 2.遵循代理
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    // 3.注册UITableViewCell
    [self.tableView registerClass:[XinWenTableViewCell class] forCellReuseIdentifier:@"UITableView"];
    // 4.添加到视图上
    [self.view addSubview:self.tableView];
    

    [LoadData loadDataWithFinishBlock:^(BOOL success, NSArray * _Nonnull dataArray) {
        self.dataArray = dataArray;
        [self.tableView reloadData];
    }];
}

#pragma mark - 代理方法
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    XinWenTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableView"];
    cell.delegate = self;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSDictionary *dic = @{@"a":@"1",@"b":@"2"};
//    __kindof UIViewController *detailController = [ZuJianHuaOne zuJianHua:dic];
//    [self.navigationController pushViewController:detailController animated:YES];
    
    
    [ZuJianHuaOne  openUrl:@"detail://" params:@{@"url":@"组件化测试",@"controller":self.navigationController}];

}




- (void)tableViewCell:(UITableViewCell *)tableViewCell clickImage:(NSString *)str {
//    TanChuangView *view = [[TanChuangView alloc] initWithFrame:self.view.bounds];
//
//    __weak __typeof(self) weakSelf = self;
//    [view showWithCallBack:^{
//        __strong __typeof(self) strongSelf = weakSelf;
//        // 先删数据，后删动画
//        [strongSelf.dataArray removeLastObject];
//        [strongSelf.tableView deleteRowsAtIndexPaths:@[[strongSelf.tableView indexPathForCell:tableViewCell]] withRowAnimation:UITableViewRowAnimationAutomatic];
//    }];
}

#pragma mark - 逻辑处理

@end
