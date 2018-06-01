//
//  GBReadPageViewController.h
//  GBReader
//
//  Created by youguobiao on 2018/4/24.
//  Copyright © 2018年 youguobiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBReadPageViewController : UIViewController
+ (GBReadPageViewController *)creatWithIndex:(NSInteger)index;
@property(nonatomic,strong)UILabel * indexLabel;
@end
