//
//  Nanny.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "Nanny.h"
#import "Baby.h"
@interface Nanny () <BabyProtocol>

@end
@implementation Nanny

-(void)sleep:(Baby *)baby{
    NSLog(@"唱歌, 犯困度 = %i", baby.sleepy += 10);
}

-(void)food:(Baby *)baby{
    NSLog(@"喂饭, 饥饿度 = %i", baby.hungry -= 10);
}
@end
