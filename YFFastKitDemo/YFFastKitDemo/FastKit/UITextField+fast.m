//
//  UITextField+fast.m
//  demo工程
//
//  Created by 耿远风 on 2019/1/9.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "UITextField+fast.h"

@implementation UITextField (fast)
-(FastTextFieldModel *)fast{
    FastTextFieldModel *model=[[FastTextFieldModel alloc] init];
    model.textField=self;
    model.view=(UIView *)self;
    return model;
}
/** **文字** 输入框 */
+(UITextField *)textField{
    UITextField *textField=[[UITextField alloc] init];
    textField.font=[UIFont systemFontOfSize:15];
    textField.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [textField setValue:[UIColor colorWithRed:0x94/255.f green:0x94/255.f blue:0x94/255.f alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [textField setValue:[UIFont systemFontOfSize:15] forKeyPath:@"_placeholderLabel.font"];
    textField.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    return textField;
}
/** **文字** 输入框 ，并添加到父视图 */
+(UITextField *)textFieldAndSuperview:(UIView *)superview{
    UITextField *textField=[[UITextField alloc] init];
    textField.font=[UIFont systemFontOfSize:15];
    textField.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [textField setValue:[UIColor colorWithRed:0x94/255.f green:0x94/255.f blue:0x94/255.f alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [textField setValue:[UIFont systemFontOfSize:15] forKeyPath:@"_placeholderLabel.font"];
    textField.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    [superview addSubview:textField];
    return textField;
}
/** **数字** 输入框 */
+(UITextField *)numberField{
    UITextField *textField=[[UITextField alloc] init];
    textField.font=[UIFont systemFontOfSize:15];
    textField.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [textField setValue:[UIColor colorWithRed:0x94/255.f green:0x94/255.f blue:0x94/255.f alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [textField setValue:[UIFont systemFontOfSize:15] forKeyPath:@"_placeholderLabel.font"];
    textField.keyboardType=UIKeyboardTypeNumberPad;
    return textField;
}
/** **数字** 输入框 ，并添加到父视图 */
+(UITextField *)numberFieldAndSuperview:(UIView *)superview{
    UITextField *textField=[[UITextField alloc] init];
    textField.font=[UIFont systemFontOfSize:15];
    textField.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [textField setValue:[UIColor colorWithRed:0x94/255.f green:0x94/255.f blue:0x94/255.f alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    [textField setValue:[UIFont systemFontOfSize:15] forKeyPath:@"_placeholderLabel.font"];
    textField.keyboardType=UIKeyboardTypeNumberPad;
    [superview addSubview:textField];
    return textField;
}
@end
