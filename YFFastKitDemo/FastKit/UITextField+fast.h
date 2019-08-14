//
//  UITextField+fast.h
//  demo工程
//
//  Created by 耿远风 on 2019/1/9.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastModel.h"

@class FastTextFieldModel;

typedef FastTextFieldModel * (^FastField_pText_pFontSize_pColor_tFontSize_tColor)(NSString *pText,CGFloat pFontSize,UIColor *pColor,CGFloat tFontSize,UIColor *tColor);

typedef FastTextFieldModel * (^FastFieldText)(NSString *text);
typedef FastTextFieldModel * (^FastFieldAttributedText)(NSAttributedString *attributedText);
typedef FastTextFieldModel * (^FastFieldTextColor)(UIColor *textColor);
typedef FastTextFieldModel * (^FastFieldFont)(UIFont *font);
typedef FastTextFieldModel * (^FastFieldTextAlignment)(NSTextAlignment textAlignment);
typedef FastTextFieldModel * (^FastFieldBorderStyle)(UITextBorderStyle borderStyle);
typedef FastTextFieldModel * (^FastFieldDefaultTextAttributes)(NSDictionary<NSAttributedStringKey,id> *defaultTextAttributes);
typedef FastTextFieldModel * (^FastFieldPlaceholder)(NSString *placeholder);
typedef FastTextFieldModel * (^FastFieldPlaceholderTextColor)(UIColor *placeholderTextColor);
typedef FastTextFieldModel * (^FastFieldPlaceholderFont)(UIFont *placeholderFont);
typedef FastTextFieldModel * (^FastFieldAttributedPlaceholder)(NSAttributedString *attributedPlaceholder);
typedef FastTextFieldModel * (^FastFieldClearsOnBeginEditing)(BOOL clearsOnBeginEditing);
typedef FastTextFieldModel * (^FastFieldAdjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
typedef FastTextFieldModel * (^FastFieldMinimumFontSize)(CGFloat minimumFontSize);
typedef FastTextFieldModel * (^FastFieldDelegate)(id delegate);
typedef FastTextFieldModel * (^FastFieldBackground)(UIImage *background);
typedef FastTextFieldModel * (^FastFieldDisabledBackground)(UIImage *disabledBackground);
typedef FastTextFieldModel * (^FastFieldAllowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
typedef FastTextFieldModel * (^FastFieldTypingAttributes)(NSDictionary<NSAttributedStringKey,id> *typingAttributes);
typedef FastTextFieldModel * (^FastFieldClearButtonMode)(UITextFieldViewMode clearButtonMode);
typedef FastTextFieldModel * (^FastFieldLeftView)(UIView *leftView);
typedef FastTextFieldModel * (^FastFieldLeftViewMode)(UITextFieldViewMode leftViewMode);
typedef FastTextFieldModel * (^FastFieldRightView)(UIView *rightView);
typedef FastTextFieldModel * (^FastFieldRightViewMode)(UITextFieldViewMode rightViewMode);
typedef FastTextFieldModel * (^FastFieldInputView)(UIView *inputView);
typedef FastTextFieldModel * (^FastFieldInputAccessoryView)(UIView *inputAccessoryView);
typedef FastTextFieldModel * (^FastFieldKeyboardType)(UIKeyboardType keyboardType);
typedef FastTextFieldModel * (^FastFieldReturnKeyType)(UIReturnKeyType returnKeyType);
typedef FastTextFieldModel * (^FastFieldSecureTextEntry)(BOOL secureTextEntry);
typedef FastTextFieldModel * (^FastFieldTextFieldDidChange)(id target,SEL textFieldDidChange);


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


@interface FastTextFieldModel : FastModel

@property (nonatomic,strong)UITextField *textField;

@property (nonatomic, copy, readonly)FastField_pText_pFontSize_pColor_tFontSize_tColor placeholderAndText;

@property (nonatomic, copy, readonly)FastFieldText text;
@property (nonatomic, copy, readonly)FastFieldAttributedText attributedText;
@property (nonatomic, copy, readonly)FastFieldTextColor textColor;
@property (nonatomic, copy, readonly)FastFieldFont font;
@property (nonatomic, copy, readonly)FastFieldTextAlignment textAlignment;
@property (nonatomic, copy, readonly)FastFieldBorderStyle borderStyle;
@property (nonatomic, copy, readonly)FastFieldDefaultTextAttributes defaultTextAttributes;
@property (nonatomic, copy, readonly)FastFieldPlaceholder placeholder;
@property (nonatomic, copy, readonly)FastFieldPlaceholderTextColor placeholderTextColor;
@property (nonatomic, copy, readonly)FastFieldPlaceholderFont placeholderFont;
@property (nonatomic, copy, readonly)FastFieldAttributedPlaceholder attributedPlaceholder;
@property (nonatomic, copy, readonly)FastFieldClearsOnBeginEditing clearsOnBeginEditing;
@property (nonatomic, copy, readonly)FastFieldAdjustsFontSizeToFitWidth adjustsFontSizeToFitWidth;
@property (nonatomic, copy, readonly)FastFieldMinimumFontSize minimumFontSize;
@property (nonatomic, copy, readonly)FastFieldDelegate delegate;
@property (nonatomic, copy, readonly)FastFieldBackground background;
@property (nonatomic, copy, readonly)FastFieldDisabledBackground disabledBackground;
@property (nonatomic, copy, readonly)FastFieldAllowsEditingTextAttributes allowsEditingTextAttributes;
@property (nonatomic, copy, readonly)FastFieldTypingAttributes typingAttributes;
@property (nonatomic, copy, readonly)FastFieldClearButtonMode clearButtonMode;
@property (nonatomic, copy, readonly)FastFieldLeftView leftView;
@property (nonatomic, copy, readonly)FastFieldLeftViewMode leftViewMode;
@property (nonatomic, copy, readonly)FastFieldRightView rightView;
@property (nonatomic, copy, readonly)FastFieldRightViewMode rightViewMode;
@property (nonatomic, copy, readonly)FastFieldInputView inputView;
@property (nonatomic, copy, readonly)FastFieldInputAccessoryView inputAccessoryView;
@property (nonatomic, copy, readonly)FastFieldKeyboardType keyboardType;
@property (nonatomic, copy, readonly)FastFieldReturnKeyType returnKeyType;
@property (nonatomic, copy, readonly)FastFieldSecureTextEntry secureTextEntry;
@property (nonatomic, copy, readonly)FastFieldTextFieldDidChange textFieldDidChange;

@end
