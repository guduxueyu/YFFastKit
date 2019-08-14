//
//  UIButton+layout.h
//  zhouyimed-ios
//
//  Created by 耿远风 on 2019/7/17.
//  Copyright © 2019 zzcao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN
/**
 UIButton：点击事件 block 返回
 
 @param button 当前的 button
 */
typedef void (^YFKit_UIButtonActionBlock)(UIButton * _Nonnull button);

@interface UIButton (layout)
/**
 UIButton：点击事件 block 返回
 */
@property(nonatomic, copy) YFKit_UIButtonActionBlock buttonActionBlock;

@property (nonatomic,strong)NSMutableDictionary *borderColorDic;

@property (nonatomic,strong)NSMutableDictionary *backgroundColorDic;

/**
 * 设置不同状态下的borderColor(支持动画效果)
 */
- (void)setborderColor:(UIColor *)borderColor forState:(UIControlState)state;

/**
 * 设置不同状态下的backgroundColor(支持动画效果)
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;
@end

NS_ASSUME_NONNULL_END
