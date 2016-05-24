//
//  main.m
//  代理 demo
//
//  Created by Emo_Lin on 15/1/25.
//  Copyright © 2015年 linweida_emo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"
#import "Wife.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        Person * p = [[Person alloc] init];
        Wife * w = [[Wife alloc] init];
        p.delegate = w;
        [p howMuchPayForWork];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
