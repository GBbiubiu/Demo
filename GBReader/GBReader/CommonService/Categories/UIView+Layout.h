//
//  UIView+Layout.h
//  GBReader
//
//  Created by youguobiao on 2018/4/24.
//  Copyright © 2018年 youguobiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Layout)
/**
 *  设置高度
 */
@property (nonatomic, assign) CGFloat height;

/**
 *  设置宽度
 */
@property (nonatomic, assign) CGFloat width;

/**
 *  设置顶端距离
 */
@property (nonatomic, assign) CGFloat top;

/**
 *  设置左端距离
 */
@property (nonatomic, assign) CGFloat left;

/**
 *  设置底部距离
 */
@property (nonatomic, assign) CGFloat bottom;

/**
 *  设置右端距离
 */
@property (nonatomic, assign) CGFloat right;

/**
 *  设置中心X位置
 */
@property (nonatomic, assign) CGFloat centerX;

/**
 *  设置中心Y位置
 */
@property (nonatomic, assign) CGFloat centerY;

/**
 *  返回最大的x坐标
 *
 *  @return  返回值
 */
- (CGFloat)maxX;

/**
 *  返回最小的x坐标
 *
 *  @return  返回值
 */
- (CGFloat)minX;

/**
 *  返回最大的y坐标
 *
 *  @return  返回值
 */
- (CGFloat)maxY;

/**
 *  返回最小的y坐标
 *
 *  @return  返回值
 */
- (CGFloat)minY;

@end
