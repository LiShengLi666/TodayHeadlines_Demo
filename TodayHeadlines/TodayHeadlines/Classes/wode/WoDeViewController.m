//
//  WoDeViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "WoDeViewController.h"

@interface WoDeViewController ()

@end

@implementation WoDeViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.title = @"我的";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    
    self.tabBarController.title = @"我的";
}


@end
