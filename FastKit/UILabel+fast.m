//
//  UILabel+fast.m
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/3.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import "UILabel+fast.h"



@implementation UILabel (fast)

-(FastLabelModel *)fast{
    FastLabelModel *model=[[FastLabelModel alloc] init];
    model.label=self;
    model.view=(UIView *)self;
    return model;
}
/** 标题Label，15号字 */
+(UILabel *)titleLabel{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:15];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    return label;
}
/** 标题Label，15号字 ，并添加到父视图 */
+(UILabel *)titleLabelAndSuperview:(UIView *)superview{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:15];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [superview addSubview:label];
    return label;
}
/** 大标题Label，18号字 */
+(UILabel *)bigTitleLabel{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:18];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    return label;
}
/** 大标题Label，18号字 ，并添加到父视图 */
+(UILabel *)bigTitleLabelAndSuperview:(UIView *)superview{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:18];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [superview addSubview:label];
    return label;
}
/** 内容Label，14号字 */
+(UILabel *)contentLabel{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:14];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    return label;
}
/** 内容Label，14号字 ，并添加到父视图 */
+(UILabel *)contentLabelAndSuperview:(UIView *)superview{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:14];
    label.textColor=[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1];
    [superview addSubview:label];
    return label;
}
/** 详情Label，12号字 */
+(UILabel *)detailLabel{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:12];
    label.textColor=[UIColor colorWithRed:0xa2/255.f green:0xa2/255.f blue:0xa2/255.f alpha:1];
    return label;
}
/** 详情Label，12号字 ，并添加到父视图 */
+(UILabel *)detailLabelAndSuperview:(UIView *)superview{
    UILabel *label=[[UILabel alloc]init];
    label.font=[UIFont systemFontOfSize:12];
    label.textColor=[UIColor colorWithRed:0xa2/255.f green:0xa2/255.f blue:0xa2/255.f alpha:1];
    [superview addSubview:label];
    return label;
}
@end
@implementation FastLabelModel

@synthesize label=_label;
@synthesize text=_text;
@synthesize font=_font;
@synthesize fontSize=_fontSize;
@synthesize textColor=_textColor;
@synthesize textAlignment=_textAlignment;
@synthesize lineBreakMode=_lineBreakMode;
@synthesize attributedText=_attributedText;
@synthesize highlightedTextColor=_highlightedTextColor;
@synthesize numberOfLines=_numberOfLines;
@synthesize Text_FontSize_Color=_Text_FontSize_Color;
@synthesize Text_FontSize_Color_Ali=_Text_FontSize_Color_Ali;

-(FastText)text{
    if (!_text) {
        __weak __typeof(self) weakSelf = self;
        _text=^(NSString *text){
            weakSelf.label.text=text;
            return weakSelf;
        };
    }
    return _text;
}
-(FastFont)font{
    if (!_font) {
        __weak __typeof(self) weakSelf = self;
        _font=^(UIFont *font){
            weakSelf.label.font=font;
            return weakSelf;
        };
    }
    return _font;
}
-(FastFontSize)fontSize{
    if (!_fontSize) {
        __weak __typeof(self) weakSelf = self;
        _fontSize=^(CGFloat size){
            weakSelf.label.font=[UIFont systemFontOfSize:size];
            return weakSelf;
        };
    }
    return _fontSize;
}
-(FastTextColor)textColor{
    if (!_textColor) {
        __weak __typeof(self) weakSelf = self;
        _textColor=^(UIColor *textColor){
            weakSelf.label.textColor=textColor;
            return weakSelf;
        };
    }
    return _textColor;
}
-(Fast_Text_FontSize_Color)Text_FontSize_Color{
    if (!_Text_FontSize_Color) {
        __weak __typeof(self) weakSelf = self;
        _Text_FontSize_Color=^(NSString *text,CGFloat size,UIColor *textColor){
            weakSelf.label.text=text;
            weakSelf.label.font=[UIFont systemFontOfSize:size];
            weakSelf.label.textColor=textColor;
            return weakSelf;
        };
    }
    return _Text_FontSize_Color;
}
-(Fast_Text_FontSize_Color_Ali)Text_FontSize_Color_Ali{
    if (!_Text_FontSize_Color_Ali) {
        __weak __typeof(self) weakSelf = self;
        _Text_FontSize_Color_Ali=^(NSString *text,CGFloat size,UIColor *textColor,NSTextAlignment textAlignment){
            weakSelf.label.text=text;
            weakSelf.label.font=[UIFont systemFontOfSize:size];
            weakSelf.label.textColor=textColor;
            weakSelf.label.textAlignment=textAlignment;
            return weakSelf;
        };
    }
    return _Text_FontSize_Color_Ali;
}
-(FastAttributedText)attributedText{
    if (!_attributedText) {
        __weak __typeof(self) weakSelf = self;
        _attributedText=^(NSAttributedString *attributedText){
            weakSelf.label.attributedText=attributedText;
            return weakSelf;
        };
    }
    return _attributedText;
}
-(FastHighlightedTextColor)highlightedTextColor{
    if (!_highlightedTextColor) {
        __weak __typeof(self) weakSelf = self;
        _highlightedTextColor=^(UIColor *highlightedTextColor){
            weakSelf.label.highlightedTextColor=highlightedTextColor;
            return weakSelf;
        };
    }
    return _highlightedTextColor;
}
-(FastTextAlignment)textAlignment{
    if (!_textAlignment) {
        __weak __typeof(self) weakSelf = self;
        _textAlignment=^(NSTextAlignment textAlignment){
            weakSelf.label.textAlignment=textAlignment;
            return weakSelf;
        };
    }
    return _textAlignment;
}
-(FastLineBreakMode)lineBreakMode{
    if (!_lineBreakMode) {
        __weak __typeof(self) weakSelf = self;
        _lineBreakMode=^(NSLineBreakMode lineBreakMode){
            weakSelf.label.lineBreakMode=lineBreakMode;
            return weakSelf;
        };
    }
    return _lineBreakMode;
}
-(FastNumberOfLines)numberOfLines{
    if (!_numberOfLines) {
        __weak __typeof(self) weakSelf = self;
        _numberOfLines=^(NSInteger numberOfLines){
            weakSelf.label.numberOfLines=numberOfLines;
            return weakSelf;
        };
    }
    return _numberOfLines;
}

@end
