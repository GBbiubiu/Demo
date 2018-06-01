//
//  GBReaderViewController.m
//  GBReader
//
//  Created by youguobiao on 2018/4/24.
//  Copyright © 2018年 youguobiao. All rights reserved.
//

#import "GBReaderViewController.h"
#import "GBReadPageViewController.h"

@interface GBReaderViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (nonatomic, strong) UIPageViewController * pageViewControl;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation GBReaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pageViewControl = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:@{UIPageViewControllerOptionSpineLocationKey:@0,UIPageViewControllerOptionInterPageSpacingKey:@10}];
    self.view.backgroundColor = [UIColor greenColor];
    //设置翻页视图的尺寸
    _pageViewControl.view.bounds=self.view.bounds;
    //设置数据源与代理
    _pageViewControl.dataSource=self;
    _pageViewControl.delegate=self;
    //创建初始界面
    GBReadPageViewController * model = [GBReadPageViewController creatWithIndex:1];
    //设置初始界面
    [_pageViewControl setViewControllers:@[model] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    //设置是否双面展示
    _pageViewControl.doubleSided = YES;
    _dataArray = [[NSMutableArray alloc]init];
    [_dataArray addObject:model];
    [self.view addSubview:_pageViewControl.view];
}

//翻页控制器进行向前翻页动作 这个数据源方法返回的视图控制器为要显示视图的视图控制器
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    int index = (int)[_dataArray indexOfObject:viewController];
    if (index==0) {
        return nil;
    }else{
        return _dataArray[index-1];
    }
}
//翻页控制器进行向后翻页动作 这个数据源方法返回的视图控制器为要显示视图的视图控制器
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    int index = (int)[_dataArray indexOfObject:viewController];
    if (index==9) {
        return nil;
    }else{
        if (_dataArray.count-1>=(index+1)) {
            return _dataArray[index+1];
        }else{
            GBReadPageViewController * model = [GBReadPageViewController creatWithIndex:index+2];
            [_dataArray addObject:model];
            return model;
        }
    }
}
//屏幕旋转触发的代理方法
- (UIPageViewControllerSpineLocation) pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation{
    return UIPageViewControllerSpineLocationMin;
}
//设置分页控制器的分页数
- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    
    return 10;
}
//设置初始的分页点
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController{
    return 0;
}

@end
