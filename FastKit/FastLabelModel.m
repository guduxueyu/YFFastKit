//
//  FastLabelModel.m
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastLabelModel.h"

@implementation FastLabelModel

@synthesize label=_label;
@synthesize text=_text;
@synthesize font=_font;
@synthesize textColor=_textColor;
@synthesize textAlignment=_textAlignment;
@synthesize lineBreakMode=_lineBreakMode;
@synthesize attributedText=_attributedText;
@synthesize highlightedTextColor=_highlightedTextColor;
@synthesize numberOfLines=_numberOfLines;

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

