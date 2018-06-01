//
//  GBBaseNavigationViewController.m
//  GBReader
//
//  Created by youguobiao on 2018/4/24.
//  Copyright © 2018年 youguobiao. All rights reserved.
//

#import "GBBaseNavigationViewController.h"

@interface GBBaseNavigationViewController () <UINavigationControllerDelegate>

@end

@implementation GBBaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark UINavigationControllerDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [self _setNavBarHiddenWithNavVC:navigationController withVC:viewController];
}

#pragma mark -
#pragma mark 导航统一配置
static NSArray *hiddenNavBarArray = nil;
static NSArray *disableNavGestureArray = nil;

/**
 设置某些页面导航是否显示
 
 @param nav 对应nav
 @param vc 具体的vc
 */
- (void)_setNavBarHiddenWithNavVC:(UINavigationController *)nav withVC:(UIViewController *)vc {
    if (!hiddenNavBarArray) {
        //需要隐藏导航的类
        hiddenNavBarArray =
        @[@"GBReaderViewController", //阅读页面
          ];
    }
    NSString *className = NSStringFromClass([vc class]);
    
    //判断是否隐藏导航
    if ([hiddenNavBarArray containsObject:className]) {
        [nav setNavigationBarHidden:YES animated:YES];
    } else {
        [nav setNavigationBarHidden:NO animated:YES];
    }
}

@end
