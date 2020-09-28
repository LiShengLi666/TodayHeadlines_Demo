//
//  WKWebViewController.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "WKWebViewController.h"
#import <WebKit/WebKit.h>

@interface WKWebViewController ()<WKNavigationDelegate>

/**  */
@property (nonatomic, strong) WKWebView *wkView;

/** 进度条 */
@property (nonatomic, strong) UIProgressView *progressView;

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"WKWebView";
    
    [self.view addSubview:({
        self.wkView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height - 88)];
        // 加载网页
        [self.wkView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://time.geekbang.org/course/intro/100025901"]]];
        // 遵循代理
        self.wkView.navigationDelegate = self;
        // 注册KVO，监听加载进度
        [self.wkView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
        self.wkView;
    })];
    
    [self.view addSubview:({
        self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, 20)];
        self.progressView;
    })];
}

/**
 WKWebView加载完毕
 */
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    NSLog(@"WKWebView加载完毕");
}

/**
 监听加载进度
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"加载进度 = %@",change);
    self.progressView.progress = self.wkView.estimatedProgress;
}

/**
 移除代理
 */
- (void)dealloc{
    
    [self.wkView removeObserver:self forKeyPath:@"estimatedProgress"];
}
@end
