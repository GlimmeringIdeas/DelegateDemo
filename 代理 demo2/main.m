//
//  main.m
//  代理 demo2
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Baby.h"
#import "Nanny.h"
#import "Mother.h"

int main(int argc, const char * argv[]) {
    //需求: 设计一个保姆代理来照顾婴儿吃饭睡觉
    Baby *baby = [[Baby alloc] init];
    Nanny * n = [[Nanny alloc] init];
    baby.delegate = n;
//        Mother *stu = [Mother new];
//        baby.nanny = stu;
    
    NSLog(@"----------");
    [baby babyHungry:56];
    NSLog(@"---------------------");
    [baby babySleepy:56];
    NSLog(@"----------");
    return 0;
}
