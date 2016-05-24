//
//  Wife.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "Wife.h"
#import "Person.h"
@interface Wife ()<PersonDelegate>
@end

@implementation Wife

- (void)cooking:(NSString *)pay {
    NSString * payNumber = pay;
    NSLog(@"煮饭支付了%@元",payNumber);
}
- (void)washing:(NSString *)pay {
    NSString * payNumber = pay;
    NSLog(@"洗衣服支付了%@元",payNumber);
}
@end
