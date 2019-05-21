//
//  FastModel.h
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/5.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FastModel : NSObject
typedef FastModel * (^FastFrame)(CGRect frame);
typedef FastModel * (^FastBounds)(CGRect bounds);
typedef FastModel * (^FastCenter)(CGPoint center);
typedef FastModel * (^FastUserInteractionEnabled)(BOOL userInteractionEnabled);
typedef FastModel * (^FastTag)(NSInteger tag);
typedef FastModel * (^FastCornerRadius)(CGFloat cornerRadius);
typedef FastModel * (^FastBorderColor)(UIColor *borderColor);
typedef FastModel * (^FastBorderWidth)(CGFloat borderWidth);
typedef FastModel * (^FastClipsToBounds)(BOOL clipsToBounds);
typedef FastModel * (^FastBackgroundColor)(UIColor *backgroundColor);
typedef FastModel * (^FastAlpha)(CGFloat alpha);
typedef FastModel * (^FastHidden)(BOOL hidden);
typedef FastModel * (^FastContentMode)(UIViewContentMode contentMode);

@property (nonatomic,strong)UIView *view;

/** frame CGRect */
@property (nonatomic, copy, readonly)FastFrame frame;
/** bounds CGRect */
@property (nonatomic, copy, readonly)FastBounds bounds;
/** center CGPoint */
@property (nonatomic, copy, readonly)FastCenter center;
/** 用户交互 BOOL 默认YES */
@property (nonatomic, copy, readonly)FastUserInteractionEnabled userInteractionEnabled;
/** tag  NSInteger */
@property (nonatomic, copy, readonly)FastTag tag;
/** 圆角 CGFloat */
@property (nonatomic, copy, readonly)FastCornerRadius layer_cornerRadius;
/** 边框颜色 UIColor */
@property (nonatomic, copy, readonly)FastBorderColor layer_borderColor;
/** 边框厚度  CGFloat */
@property (nonatomic, copy, readonly)FastBorderWidth layer_borderWidth;
/** 超出是否裁剪 BOOL 默认NO */
@property (nonatomic, copy, readonly)FastClipsToBounds clipsToBounds;
/** 背景色 UIColor */
@property (nonatomic, copy, readonly)FastBackgroundColor backgroundColor;
/** 透明度 CGFloat 默认1.0 */
@property (nonatomic, copy, readonly)FastAlpha alpha;
/** 设置隐藏 BOOL 默认NO */
@property (nonatomic, copy, readonly)FastHidden hidden;
/** 填充属性  UIViewContentMode 默认UIViewContentModeScaleToFill */
@property (nonatomic, copy, readonly)FastContentMode contentMode;

@end
