//
//  UIAdapter.h
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/30.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

/**
 适配工具类
 */
#ifndef UIAdapter_h
#define UIAdapter_h

/** 全屏宽高的宏 */
#define SCREEN_W       ([[UIScreen mainScreen ] bounds].size.width)
#define SCREEN_H       ([[UIScreen mainScreen ] bounds].size.height)

// X系列的适配的关键就是让出顶部和底部的安全距离
/** 判断是不是X系列 */
#define IS_IPHONEX_All (SCREEN_H == 812 || SCREEN_H == 896)

/** 如果是X系列，那么状态栏是44 */
#define STATUSBAR_H    (IS_IPHONEX_All ? 44 : 20)

/** 如果是X系列，那么导航栏是88 */
#define NAVBAR_H       (IS_IPHONEX_All ? 88 : 64)

/** 如果是X系列，那么标签栏是83 */
#define TABBAR_H       (IS_IPHONEX_All ? 83 : 49)

/** 如果是X系列，那么底部安全区域是83 */
#define SAFEAREA_B_H   (IS_IPHONEX_All ? 34 : 0)

/** 适配字体的宏 */
#define UIFont(n) [UIFont systemFontOfSize:UIAdapter(n)]

/** 适配单个参数 */
static inline CGFloat UIAdapter(float n)
{
    CGFloat scale = 375 / SCREEN_W;
    return n / scale;
}

/** 适配CGRectMake */
static inline CGRect UIRect(x, y, width, height)
{
    return CGRectMake(UIAdapter(x), UIAdapter(y), UIAdapter(width), UIAdapter(height));
}

/** 适配CGSizeMake */
static inline CGSize UISize(width, height)
{
    return CGSizeMake(UIAdapter(width), UIAdapter(height));
}

/** 适配CGPoint */
static inline CGPoint UIPoint(x, y)
{
    return CGPointMake(UIAdapter(x), UIAdapter(y));
}

#endif /* UIAdapter_h */
