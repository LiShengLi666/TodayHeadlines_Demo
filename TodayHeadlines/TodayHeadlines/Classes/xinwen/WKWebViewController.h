//
//  TestViewController.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/27.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// WKWebView显示
@interface WKWebViewController : UIViewController

///
@property (nonatomic, copy) NSString *testStr;

- (instancetype)initWithUrl:(NSString *)url;

@end

NS_ASSUME_NONNULL_END
