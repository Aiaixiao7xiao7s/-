//
//  UIViewController+HOOK.m
//  薛楠
//
//  Created by Mega1 on 16/1/28.
//  Copyright © 2016年 薛楠. All rights reserved.
//

#import "UIViewController+HOOK.h"
#import <objc/runtime.h>

@implementation UIViewController (HOOK)
+ (void)load{
    Method Obj_Method = class_getInstanceMethod([self class], @selector(viewDidLoad));
    Method My_Method = class_getInstanceMethod([self class], @selector(viewDidLoadHook));
    method_exchangeImplementations(Obj_Method, My_Method);
   
    
}
- (void)viewDidLoadHook{
    
    NSLog(@"------看看是啥------");

    [self viewDidLoadHook];
    
    
}
@end
