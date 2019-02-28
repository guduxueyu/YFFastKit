//
//  FastModel.m
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/5.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import "FastModel.h"

@implementation FastModel

@synthesize frame=_frame;
@synthesize bounds=_bounds;
@synthesize center=_center;
@synthesize userInteractionEnabled=_userInteractionEnabled;
@synthesize tag=_tag;
@synthesize layer_cornerRadius=_layer_cornerRadius;
@synthesize layer_borderColor=_layer_borderColor;
@synthesize layer_borderWidth=_layer_borderWidth;
@synthesize clipsToBounds=_clipsToBounds;
@synthesize alpha=_alpha;
@synthesize hidden=_hidden;
@synthesize contentMode=_contentMode;
@synthesize backgroundColor=_backgroundColor;

-(FastFrame)frame{
    if (!_frame) {
        __weak __typeof(self) weakSelf = self;
        _frame=^(CGRect frame){
            weakSelf.view.frame=frame;
            return weakSelf;
        };
    }
    return _frame;
}
-(FastBounds)bounds{
    if (!_bounds) {
        __weak __typeof(self) weakSelf = self;
        _bounds=^(CGRect bounds){
            weakSelf.view.bounds=bounds;
            return weakSelf;
        };
    }
    return _bounds;
}
-(FastCenter)center{
    if (!_center) {
        __weak __typeof(self) weakSelf = self;
        _center=^(CGPoint center){
            weakSelf.view.center=center;
            return weakSelf;
        };
    }
    return _center;
}
-(FastUserInteractionEnabled)userInteractionEnabled{
    if (!_userInteractionEnabled) {
        __weak __typeof(self) weakSelf = self;
        _userInteractionEnabled=^(BOOL userInteractionEnabled){
            weakSelf.view.userInteractionEnabled=userInteractionEnabled;
            return weakSelf;
        };
    }
    return _userInteractionEnabled;
}
-(FastTag)tag{
    if (!_tag) {
        __weak __typeof(self) weakSelf = self;
        _tag=^(NSInteger tag){
            weakSelf.view.tag=tag;
            return weakSelf;
        };
    }
    return _tag;
}
-(FastCornerRadius)layer_cornerRadius{
    if (!_layer_cornerRadius) {
        __weak __typeof(self) weakSelf = self;
        _layer_cornerRadius=^(CGFloat layer_cornerRadius){
            weakSelf.view.layer.cornerRadius=layer_cornerRadius;
            return weakSelf;
        };
    }
    return _layer_cornerRadius;
}
-(FastBorderColor)layer_borderColor{
    if (!_layer_borderColor) {
        __weak __typeof(self) weakSelf = self;
        _layer_borderColor=^(UIColor *layer_borderColor){
            weakSelf.view.layer.borderColor=layer_borderColor.CGColor;
            return weakSelf;
        };
    }
    return _layer_borderColor;
}
-(FastBorderWidth)layer_borderWidth{
    if (!_layer_borderWidth) {
        __weak __typeof(self) weakSelf = self;
        _layer_borderWidth=^(CGFloat layer_borderWidth){
            weakSelf.view.layer.borderWidth=layer_borderWidth;
            return weakSelf;
        };
    }
    return _layer_borderWidth;
}
-(FastClipsToBounds)clipsToBounds{
    if (!_clipsToBounds) {
        __weak __typeof(self) weakSelf = self;
        _clipsToBounds=^(BOOL clipsToBounds){
            weakSelf.view.clipsToBounds=clipsToBounds;
            return weakSelf;
        };
    }
    return _clipsToBounds;
}
-(FastBackgroundColor)backgroundColor{
    if (!_backgroundColor) {
        __weak __typeof(self) weakSelf = self;
        _backgroundColor=^(UIColor *backgroundColor){
            weakSelf.view.backgroundColor=backgroundColor;
            return weakSelf;
        };
    }
    return _backgroundColor;
}
-(FastAlpha)alpha{
    if (!_alpha) {
        __weak __typeof(self) weakSelf = self;
        _alpha=^(CGFloat alpha){
            weakSelf.view.alpha=alpha;
            return weakSelf;
        };
    }
    return _alpha;
}
-(FastHidden)hidden{
    if (!_hidden) {
        __weak __typeof(self) weakSelf = self;
        _hidden=^(BOOL hidden){
            weakSelf.view.hidden=hidden;
            return weakSelf;
        };
    }
    return _hidden;
}
-(FastContentMode)contentMode{
    if (!_contentMode) {
        __weak __typeof(self) weakSelf = self;
        _contentMode=^(UIViewContentMode contentMode){
            weakSelf.view.contentMode=contentMode;
            return weakSelf;
        };
    }
    return _contentMode;
}
@end
