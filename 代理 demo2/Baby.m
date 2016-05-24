
//
//  Baby.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import "Baby.h"

@implementation Baby

-(void)babyHungry:(int)hungry{

    self.hungry = hungry;
    
    NSLog(@"宝宝饿了, 饥饿度 = %i", self.hungry);
    
    while (self.hungry >= 15){
    
        [self.delegate food:self];
    }
    
    NSLog(@"不饿了, 饥饿度 = %i", self.hungry);
}


-(void)babySleepy:(int)sleepy{

    self.sleepy = sleepy;
    
    NSLog(@"宝宝困了, 犯困度 = %i", self.sleepy);
    
    while(self.sleepy <= 90){
    
        [self.delegate sleep:self];
    }

    NSLog(@"睡觉了, 犯困度 = %i", self.sleepy);
}

@end