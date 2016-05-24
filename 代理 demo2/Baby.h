//
//  Baby.h
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Baby;

@protocol BabyProtocol <NSObject>

-(void)sleep:(Baby *)baby;

-(void)food:(Baby *)baby;

@end

@interface Baby : NSObject

@property(nonatomic, weak)id<BabyProtocol> delegate;

@property(nonatomic, assign)int hungry;

@property(nonatomic, assign)int sleepy;

-(void)babyHungry:(int)hungry;

-(void)babySleepy:(int)sleepy;

@end
