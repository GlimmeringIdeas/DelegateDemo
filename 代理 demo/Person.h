//
//  Person.h
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  1.一般情况下, 协议不用单独定义一个文件, 哪个类需要用到这个协议
 (哪个类需要限定其它类遵守某个协议), 那么协议就定义在哪个类中
 A类要限定B类, 那么协议就写在A类中
 */
@class Person;
@class Wife;
/**
 *   2.协议的名称, 一般以限定这个协议的类名开头，后面跟上Protocol或Delegate。如果是A类限定B类, 那么协议名称就以A类的类名开头， 后面跟上Protocol或Delegate
 */
/**
 *  3.被限定的那个类中, 如果用到了协议，头文件中应该使用@protocol, .m文件中使用#import
 导入协议。如果B类需要用到A类中定义的协议， 在.h文件中使用@protocol, .m文件中使用#import
 */
@protocol PersonDelegate <NSObject>
/**
 *  煮饭和洗衣服各自支付多少钱
 *
 *  @param pay 将金额传进去
 */
- (void)cooking:(NSString *)pay;
- (void)washing:(NSString *)pay;

@end

@interface Person : NSObject

@property (nonatomic , weak) id <PersonDelegate> delegate;
//@property (nonatomic , weak) Wife <PersonDelegate> *delegate;
-(void) howMuchPayForWork;
@end
