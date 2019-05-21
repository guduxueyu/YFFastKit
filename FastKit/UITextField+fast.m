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
@implementation FastTextFieldModel

@synthesize text=_text;
@synthesize attributedText=_attributedText;
@synthesize textColor=_textColor;
@synthesize font=_font;
@synthesize fontSize=_fontSize;
@synthesize textAlignment=_textAlignment;
@synthesize borderStyle=_borderStyle;
@synthesize defaultTextAttributes=_defaultTextAttributes;
@synthesize placeholder=_placeholder;
@synthesize placeholderTextColor=_placeholderTextColor;
@synthesize placeholderFont=_placeholderFont;
@synthesize placeholderFontSize=_placeholderFontSize;
@synthesize attributedPlaceholder=_attributedPlaceholder;
@synthesize clearsOnBeginEditing=_clearsOnBeginEditing;
@synthesize adjustsFontSizeToFitWidth=_adjustsFontSizeToFitWidth;
@synthesize minimumFontSize=_minimumFontSize;
@synthesize delegate=_delegate;
@synthesize background=_background;
@synthesize disabledBackground=_disabledBackground;
@synthesize allowsEditingTextAttributes=_allowsEditingTextAttributes;
@synthesize typingAttributes=_typingAttributes;
@synthesize clearButtonMode=_clearButtonMode;
@synthesize leftView=_leftView;
@synthesize leftViewMode=_leftViewMode;
@synthesize rightView=_rightView;
@synthesize rightViewMode=_rightViewMode;
@synthesize inputView=_inputView;
@synthesize inputAccessoryView=_inputAccessoryView;
@synthesize keyboardType=_keyboardType;
@synthesize returnKeyType=_returnKeyType;
@synthesize secureTextEntry=_secureTextEntry;
@synthesize textFieldDidChange=_textFieldDidChange;

-(FastFieldText)text{
    if (!_text) {
        __weak __typeof(self) weakSelf = self;
        _text=^(NSString *text){
            weakSelf.textField.text=text;
            return weakSelf;
        };
    }
    return _text;
}
-(FastFieldAttributedText)attributedText{
    if (!_attributedText) {
        __weak __typeof(self) weakSelf = self;
        _attributedText=^(NSAttributedString *attributedText){
            weakSelf.textField.attributedText=attributedText;
            return weakSelf;
        };
    }
    return _attributedText;
}
-(FastFieldTextColor)textColor{
    if (!_textColor) {
        __weak __typeof(self) weakSelf = self;
        _textColor=^(UIColor *textColor){
            weakSelf.textField.textColor=textColor;
            return weakSelf;
        };
    }
    return _textColor;
}
-(FastFieldFont)font{
    if (!_font) {
        __weak __typeof(self) weakSelf = self;
        _font=^(UIFont *font){
            weakSelf.textField.font=font;
            return weakSelf;
        };
    }
    return _font;
}
-(FastFieldFontSize)fontSize{
    if (!_fontSize) {
        __weak __typeof(self) weakSelf = self;
        _fontSize=^(CGFloat size){
            weakSelf.textField.font=[UIFont systemFontOfSize:size];
            return weakSelf;
        };
    }
    return _fontSize;
}
-(FastFieldTextAlignment)textAlignment{
    if (!_textAlignment) {
        __weak __typeof(self) weakSelf = self;
        _textAlignment=^(NSTextAlignment textAlignment){
            weakSelf.textField.textAlignment=textAlignment;
            return weakSelf;
        };
    }
    return _textAlignment;
}
-(FastFieldBorderStyle)borderStyle{
    if (!_borderStyle) {
        __weak __typeof(self) weakSelf = self;
        _borderStyle=^(UITextBorderStyle borderStyle){
            weakSelf.textField.borderStyle=borderStyle;
            return weakSelf;
        };
    }
    return _borderStyle;
}
-(FastFieldDefaultTextAttributes)defaultTextAttributes{
    if (!_defaultTextAttributes) {
        __weak __typeof(self) weakSelf = self;
        _defaultTextAttributes=^(NSDictionary *defaultTextAttributes){
            weakSelf.textField.defaultTextAttributes=defaultTextAttributes;
            return weakSelf;
        };
    }
    return _defaultTextAttributes;
}
-(FastFieldPlaceholder)placeholder{
    if (!_placeholder) {
        __weak __typeof(self) weakSelf = self;
        _placeholder=^(NSString *placeholder){
            weakSelf.textField.placeholder=placeholder;
            return weakSelf;
        };
    }
    return _placeholder;
}
-(FastFieldPlaceholderTextColor)placeholderTextColor{
    if (!_placeholderTextColor) {
        __weak __typeof(self) weakSelf = self;
        _placeholderTextColor=^(UIColor *placeholderTextColor){
            [weakSelf.textField setValue:placeholderTextColor forKeyPath:@"_placeholderLabel.textColor"];
            return weakSelf;
        };
    }
    return _placeholderTextColor;
}
-(FastFieldPlaceholderFont)placeholderFont{
    if (!_placeholderFont) {
        __weak __typeof(self) weakSelf = self;
        _placeholderFont=^(UIFont *placeholderFont){
            [weakSelf.textField setValue:placeholderFont forKeyPath:@"_placeholderLabel.font"];
            return weakSelf;
        };
    }
    return _placeholderFont;
}
-(FastFieldPlaceholderFontSize)placeholderFontSize{
    if (!_placeholderFontSize) {
        __weak __typeof(self) weakSelf = self;
        _placeholderFontSize=^(CGFloat size){
            [weakSelf.textField setValue:[UIFont systemFontOfSize:size] forKeyPath:@"_placeholderLabel.font"];
            return weakSelf;
        };
    }
    return _placeholderFontSize;
}
-(FastFieldAttributedPlaceholder)attributedPlaceholder{
    if (!_attributedPlaceholder) {
        __weak __typeof(self) weakSelf = self;
        _attributedPlaceholder=^(NSAttributedString *attributedPlaceholder){
            weakSelf.textField.attributedPlaceholder=attributedPlaceholder;
            return weakSelf;
        };
    }
    return _attributedPlaceholder;
}
-(FastFieldClearsOnBeginEditing)clearsOnBeginEditing{
    if (!_clearsOnBeginEditing) {
        __weak __typeof(self) weakSelf = self;
        _clearsOnBeginEditing=^(BOOL clearsOnBeginEditing){
            weakSelf.textField.clearsOnBeginEditing=clearsOnBeginEditing;
            return weakSelf;
        };
    }
    return _clearsOnBeginEditing;
}
-(FastFieldAdjustsFontSizeToFitWidth)adjustsFontSizeToFitWidth{
    if (!_adjustsFontSizeToFitWidth) {
        __weak __typeof(self) weakSelf = self;
        _adjustsFontSizeToFitWidth=^(BOOL adjustsFontSizeToFitWidth){
            weakSelf.textField.adjustsFontSizeToFitWidth=adjustsFontSizeToFitWidth;
            return weakSelf;
        };
    }
    return _adjustsFontSizeToFitWidth;
}
-(FastFieldMinimumFontSize)minimumFontSize{
    if (!_minimumFontSize) {
        __weak __typeof(self) weakSelf = self;
        _minimumFontSize=^(CGFloat minimumFontSize){
            weakSelf.textField.minimumFontSize=minimumFontSize;
            return weakSelf;
        };
    }
    return _minimumFontSize;
}
-(FastFieldDelegate)delegate{
    if (!_delegate) {
        __weak __typeof(self) weakSelf = self;
        _delegate=^(id delegate){
            weakSelf.textField.delegate=delegate;
            return weakSelf;
        };
    }
    return _delegate;
}
-(FastFieldBackground)background{
    if (!_background) {
        __weak __typeof(self) weakSelf = self;
        _background=^(UIImage *background){
            weakSelf.textField.background=background;
            return weakSelf;
        };
    }
    return _background;
}
-(FastFieldDisabledBackground)disabledBackground{
    if (!_disabledBackground) {
        __weak __typeof(self) weakSelf = self;
        _disabledBackground=^(UIImage *disabledBackground){
            weakSelf.textField.disabledBackground=disabledBackground;
            return weakSelf;
        };
    }
    return _disabledBackground;
}
-(FastFieldAllowsEditingTextAttributes)allowsEditingTextAttributes{
    if (!_allowsEditingTextAttributes) {
        __weak __typeof(self) weakSelf = self;
        _allowsEditingTextAttributes=^(BOOL allowsEditingTextAttributes){
            weakSelf.textField.allowsEditingTextAttributes=allowsEditingTextAttributes;
            return weakSelf;
        };
    }
    return _allowsEditingTextAttributes;
}
-(FastFieldTypingAttributes)typingAttributes{
    if (!_typingAttributes) {
        __weak __typeof(self) weakSelf = self;
        _typingAttributes=^(NSDictionary *typingAttributes){
            weakSelf.textField.typingAttributes=typingAttributes;
            return weakSelf;
        };
    }
    return _typingAttributes;
}
-(FastFieldClearButtonMode)clearButtonMode{
    if (!_clearButtonMode) {
        __weak __typeof(self) weakSelf = self;
        _clearButtonMode=^(UITextFieldViewMode clearButtonMode){
            weakSelf.textField.clearButtonMode=clearButtonMode;
            return weakSelf;
        };
    }
    return _clearButtonMode;
}
-(FastFieldLeftView)leftView{
    if (!_leftView) {
        __weak __typeof(self) weakSelf = self;
        _leftView=^(UIView *leftView){
            weakSelf.textField.leftViewMode=UITextFieldViewModeAlways;
            weakSelf.textField.leftView=leftView;
            return weakSelf;
        };
    }
    return _leftView;
}
-(FastFieldLeftViewMode)leftViewMode{
    if (!_leftViewMode) {
        __weak __typeof(self) weakSelf = self;
        _leftViewMode=^(UITextFieldViewMode leftViewMode){
            weakSelf.textField.leftViewMode=leftViewMode;
            return weakSelf;
        };
    }
    return _leftViewMode;
}
-(FastFieldRightView)rightView{
    if (!_rightView) {
        __weak __typeof(self) weakSelf = self;
        _rightView=^(UIView *rightView){
            weakSelf.textField.rightViewMode=UITextFieldViewModeAlways;
            weakSelf.textField.rightView=rightView;
            return weakSelf;
        };
    }
    return _rightView;
}
-(FastFieldRightViewMode)rightViewMode{
    if (!_rightViewMode) {
        __weak __typeof(self) weakSelf = self;
        _rightViewMode=^(UITextFieldViewMode rightViewMode){
            weakSelf.textField.rightViewMode=rightViewMode;
            return weakSelf;
        };
    }
    return _rightViewMode;
}
-(FastFieldInputView)inputView{
    if (!_inputView) {
        __weak __typeof(self) weakSelf = self;
        _inputView=^(UIView *inputView){
            weakSelf.textField.inputView=inputView;
            return weakSelf;
        };
    }
    return _inputView;
}
-(FastFieldInputAccessoryView)inputAccessoryView{
    if (!_inputAccessoryView) {
        __weak __typeof(self) weakSelf = self;
        _inputAccessoryView=^(UIView *inputAccessoryView){
            weakSelf.textField.inputAccessoryView=inputAccessoryView;
            return weakSelf;
        };
    }
    return _inputAccessoryView;
}
-(FastFieldKeyboardType)keyboardType{
    if (!_keyboardType) {
        __weak __typeof(self) weakSelf = self;
        _keyboardType=^(UIKeyboardType keyboardType){
            weakSelf.textField.keyboardType=keyboardType;
            return weakSelf;
        };
    }
    return _keyboardType;
}
-(FastFieldReturnKeyType)returnKeyType{
    if (!_returnKeyType) {
        __weak __typeof(self) weakSelf = self;
        _returnKeyType=^(UIReturnKeyType returnKeyType){
            weakSelf.textField.returnKeyType=returnKeyType;
            return weakSelf;
        };
    }
    return _returnKeyType;
}
-(FastFieldSecureTextEntry)secureTextEntry{
    if (!_secureTextEntry) {
        __weak __typeof(self) weakSelf = self;
        _secureTextEntry=^(BOOL secureTextEntry){
            weakSelf.textField.secureTextEntry=secureTextEntry;
            return weakSelf;
        };
    }
    return _secureTextEntry;
}
-(FastFieldTextFieldDidChange)textFieldDidChange{
    if (!_textFieldDidChange) {
        __weak __typeof(self) weakSelf = self;
        _textFieldDidChange=^(id target,SEL textFieldDidChange){
            [weakSelf.textField addTarget:target action:textFieldDidChange forControlEvents:UIControlEventEditingChanged];
            return weakSelf;
        };
    }
    return _textFieldDidChange;
}

@end
