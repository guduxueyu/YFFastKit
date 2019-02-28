//
//  FastButtonModel.m
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastButtonModel.h"

@implementation FastButtonModel

@synthesize titleEdgeInsets=_titleEdgeInsets;
@synthesize imageEdgeInsets=_imageEdgeInsets;
@synthesize showsTouchWhenHighlighted=_showsTouchWhenHighlighted;
@synthesize titleFont=_titleFont;
@synthesize titleNormal=_titleNormal;
@synthesize titleColorNormal=_titleColorNormal;
@synthesize titleSelect=_titleSelect;
@synthesize titleColorSelect=_titleColorSelect;
@synthesize attributedTitleNormal=_attributedTitleNormal;
@synthesize attributedTitleSelect=_attributedTitleSelect;
@synthesize backgroundImageNormal=_backgroundImageNormal;
@synthesize backgroundImageSelect=_backgroundImageSelect;
@synthesize imageNormal=_imageNormal;
@synthesize imageSelect=_imageSelect;

//-(instancetype)init{
//    self=[super init];
//    if (self) {
//        [self.button addObserver:self forKeyPath:@"state" options:NSKeyValueObservingOptionNew context:nil];
//
//    }
//    return self;
//}
//-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
//
//}
//
//-(void)dealloc{
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}
-(FastTitleEdgeInsets)titleEdgeInsets{
    if (!_titleEdgeInsets) {
        __weak __typeof(self) weakSelf = self;
        _titleEdgeInsets=^(UIEdgeInsets titleEdgeInsets){
            weakSelf.button.titleEdgeInsets=titleEdgeInsets;
            return weakSelf;
        };
    }
    return _titleEdgeInsets;
}
-(FastImageEdgeInsets)imageEdgeInsets{
    if (!_imageEdgeInsets) {
        __weak __typeof(self) weakSelf = self;
        _imageEdgeInsets=^(UIEdgeInsets imageEdgeInsets){
            weakSelf.button.imageEdgeInsets=imageEdgeInsets;
            return weakSelf;
        };
    }
    return _imageEdgeInsets;
}
-(FastShowsTouchWhenHighlighted)showsTouchWhenHighlighted{
    if (!_showsTouchWhenHighlighted) {
        __weak __typeof(self) weakSelf = self;
        _showsTouchWhenHighlighted=^(BOOL showsTouchWhenHighlighted){
            weakSelf.button.showsTouchWhenHighlighted=showsTouchWhenHighlighted;
            return weakSelf;
        };
    }
    return _showsTouchWhenHighlighted;
}
-(FastTitleFont)titleFont{
    if (!_titleFont) {
        __weak __typeof(self) weakSelf = self;
        _titleFont=^(UIFont *titleFont){
            weakSelf.button.titleLabel.font=titleFont;
            return weakSelf;
        };
    }
    return _titleFont;
}
-(FastTitleNormal)titleNormal{
    if (!_titleNormal) {
        __weak __typeof(self) weakSelf = self;
        _titleNormal=^(NSString *titleNormal){
            [weakSelf.button setTitle:titleNormal forState:UIControlStateNormal];
            return weakSelf;
        };
    }
    return _titleNormal;
}
-(FastTitleColorNormal)titleColorNormal{
    if (!_titleColorNormal) {
        __weak __typeof(self) weakSelf = self;
        _titleColorNormal=^(UIColor *titleColorNormal){
            [weakSelf.button setTitleColor:titleColorNormal forState:UIControlStateNormal];
            return weakSelf;
        };
    }
    return _titleColorNormal;
}
-(FastTitleSelect)titleSelect{
    if (!_titleSelect) {
        __weak __typeof(self) weakSelf = self;
        _titleSelect=^(NSString *titleSelect){
            [weakSelf.button setTitle:titleSelect forState:UIControlStateSelected];
            return weakSelf;
        };
    }
    return _titleSelect;
}
-(FastTitleColorSelect)titleColorSelect{
    if (!_titleColorSelect) {
        __weak __typeof(self) weakSelf = self;
        _titleColorSelect=^(UIColor *titleColorSelect){
            [weakSelf.button setTitleColor:titleColorSelect forState:UIControlStateSelected];
            return weakSelf;
        };
    }
    return _titleColorSelect;
}
-(FastAttributedTitleNormal)attributedTitleNormal{
    if (!_attributedTitleNormal) {
        __weak __typeof(self) weakSelf = self;
        _attributedTitleNormal=^(NSAttributedString *attributedTitleNormal){
            [weakSelf.button setAttributedTitle:attributedTitleNormal forState:UIControlStateNormal];
            return weakSelf;
        };
    }
    return _attributedTitleNormal;
}
-(FastAttributedTitleSelect)attributedTitleSelect{
    if (!_attributedTitleSelect) {
        __weak __typeof(self) weakSelf = self;
        _attributedTitleSelect=^(NSAttributedString *attributedTitleSelect){
            [weakSelf.button setAttributedTitle:attributedTitleSelect forState:UIControlStateSelected];
            return weakSelf;
        };
    }
    return _attributedTitleSelect;
}
-(FastBackgroundImageNormal)backgroundImageNormal{
    if (!_backgroundImageNormal) {
        __weak __typeof(self) weakSelf = self;
        _backgroundImageNormal=^(NSString *backgroundImageNormal){
            [weakSelf.button setBackgroundImage:[UIImage imageNamed:backgroundImageNormal] forState:UIControlStateNormal];
            return weakSelf;
        };
    }
    return _backgroundImageNormal;
}
-(FastBackgroundImageSelect)backgroundImageSelect{
    if (!_backgroundImageSelect) {
        __weak __typeof(self) weakSelf = self;
        _backgroundImageSelect=^(NSString *backgroundImageSelect){
            [weakSelf.button setBackgroundImage:[UIImage imageNamed:backgroundImageSelect] forState:UIControlStateSelected];
            return weakSelf;
        };
    }
    return _backgroundImageSelect;
}
-(FastImageNormal)imageNormal{
    if (!_imageNormal) {
        __weak __typeof(self) weakSelf = self;
        _imageNormal=^(NSString *imageNormal){
            [weakSelf.button setImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
            return weakSelf;
        };
    }
    return _imageNormal;
}
-(FastImageSelect)imageSelect{
    if (!_imageSelect) {
        __weak __typeof(self) weakSelf = self;
        _imageSelect=^(NSString *imageSelect){
            [weakSelf.button setImage:[UIImage imageNamed:imageSelect] forState:UIControlStateSelected];
            return weakSelf;
        };
    }
    return _imageSelect;
}
@end

