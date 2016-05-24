//
//  Person.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "Person.h"
#import "Wife.h"
@implementation Person
/**
 *  4.如果A类用到了B类实现的协议中的方法，使用之前为了保存程序安全，必须先利用respondsToSelector方法判断是否可以调用
 */
-(void)howMuchPayForWork {
    // 1.判断wife是否真的可以做饭/洗衣服
    if ([self.delegate respondsToSelector:@selector(cooking:)]) {   // 如果执行了煮饭的方法，那么支付10元钱
        [self.delegate cooking:@"10"];
    }
    if ([self.delegate respondsToSelector:@selector(washing:)]) {   // 如果执行了洗衣服的方法，那么支付10元钱
        [self.delegate washing:@"20"];
    }
}
@end
