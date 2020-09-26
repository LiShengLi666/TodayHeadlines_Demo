//
//  ViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/26.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
}

/**
 闭包方式添加控件
 */
- (void)test1{
    
    [self.view addSubview:({
           
           UILabel *lbl = [[UILabel alloc] init];
           lbl.text = @"我就是试试";
           lbl.textColor = [UIColor redColor];
           // 根据内容变大
           [lbl sizeToFit];
           lbl.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
           lbl;
       })];
}

@end
