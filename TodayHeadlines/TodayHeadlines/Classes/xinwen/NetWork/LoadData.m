//
//  LoadData.m
//  TodayHeadlines
//
//  Created by 李   胜 on 2020/9/28.
//  Copyright © 2020 Wuhan Xueyetong Big Data  Institute Co. Ltd. All rights reserved.
//

#import "LoadData.h"

@implementation LoadData

+ (void)loadDataWithFinishBlock:(LoadDataFinishBlock)finishBlock {
    NSArray *array = @[@1, @2, @2, @3, @4, @5, @6, @7, @8, @10];
    dispatch_async(dispatch_get_main_queue(), ^{
        if (finishBlock) {
            finishBlock(YES, array.copy);
        }
    });
}

@end
