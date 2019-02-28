//
//  UIButton+fast.h
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/12.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastButtonModel.h"

@interface UIButton (fast)

-(FastButtonModel *)fast;

/** **标题** Button ，15号字 */
+(UIButton *)titleButton;
/** **标题** Button ，15号字 ，并添加到父视图 */
+(UIButton *)titleButtonAndSuperview:(UIView *)superview;
/** **普通按钮** Button ，14号字 */
+(UIButton *)contentButton;
/** **普通按钮** Button ，14号字 */
+(UIButton *)contentButtonAndSuperview:(UIView *)superview;
/** **完成** Button ，蓝色18号字 */
+(UIButton *)doneButton;
/** **完成** Button ，蓝色18号字 */
+(UIButton *)doneButtonAndSuperview:(UIView *)superview;
@end

