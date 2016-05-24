//
//  Mother.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "Mother.h"
#import "Baby.h"
@interface Mother() <BabyProtocol>

@end
@implementation Mother
-(void)food:(Baby *)baby{
    baby.hungry -= 10;
    NSLog(@"喂食, 饥饿度 = %i", baby.hungry);
}

-(void)sleep:(Baby *)baby{
    baby.sleepy += 10;
    NSLog(@"唱歌, 犯困度 = %i", baby.sleepy);
}
@end
