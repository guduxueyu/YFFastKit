//
//  UITextField+fast.h
//  demo工程
//
//  Created by 耿远风 on 2019/1/9.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastTextFieldModel.h"




@interface UITextField (fast)
-(FastTextFieldModel *)fast;

/** **文字** 输入框 */
+(UITextField *)textField;
/** **文字** 输入框 ，并添加到父视图 */
+(UITextField *)textFieldAndSuperview:(UIView *)superview;
/** **数字** 输入框 ，并添加到父视图 */
+(UITextField *)numberField;
/** **数字** 输入框 ，并添加到父视图 */
+(UITextField *)numberFieldAndSuperview:(UIView *)superview;
@end

