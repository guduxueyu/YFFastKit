//
//  UIView+fast.h
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/5.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastModel.h"

@interface UIView (fast)

/** 快速属性 */
-(FastModel *)fast;
/** **线条view** */
+(UIView *)lineView;
/** **线条view**，并添加到父视图 */
+(UIView *)lineViewAndSuperview:(UIView *)superview;
/** **背景view** */
+(UIView *)backView;
/** **背景view**，并添加到父视图 */
+(UIView *)backViewAndSuperview:(UIView *)superview;
@end
