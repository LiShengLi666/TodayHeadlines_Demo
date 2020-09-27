//
//  XinWenViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "XinWenViewController.h"
#import "TestViewController.h"

@interface XinWenViewController ()<UITableViewDataSource,UITableViewDelegate>

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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.创建UITableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    // 2.遵循代理
    tableView.dataSource = self;
    tableView.delegate = self;
    // 3.注册UITableViewCell
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableView"];
    // 4.添加到视图上
    [self.view addSubview:tableView];
}




#pragma mark - 代理方法
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableView"];
    cell.textLabel.text = [NSString stringWithFormat:@"主标题 - %ld",(long)indexPath.row];
    cell.detailTextLabel.text = @"副标题";
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"cell被点击 - %@",@(indexPath.row));
    
     [self.navigationController pushViewController:[TestViewController new] animated:YES];
}

#pragma mark - 逻辑处理
- (void)viewWillAppear:(BOOL)animated{
    
    self.tabBarController.title = @"新闻";
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    [self.navigationController pushViewController:[TestViewController new] animated:YES];
//}

@end
