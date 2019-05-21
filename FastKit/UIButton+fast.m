//
//  UIButton+fast.m
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/12.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import "UIButton+fast.h"

@implementation UIButton (fast)
-(FastButtonModel *)fast{
    FastButtonModel *model=[[FastButtonModel alloc] init];
    model.button=self;
    model.view=(UIView *)self;
    return model;
}
/** **标题** Button ，15号字 */
+(UIButton *)titleButton{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:15];
    return button;
}
/** **标题** Button ，15号字 */
+(UIButton *)titleButtonAndSuperview:(UIView *)superview{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:15];
    [superview addSubview:button];
    return button;
}
/** **普通按钮** Button ，14号字 */
+(UIButton *)contentButton{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:14];
    return button;
}
/** **普通按钮** Button ，14号字 */
+(UIButton *)contentButtonAndSuperview:(UIView *)superview{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:14];
    [superview addSubview:button];
    return button;
}
/** **普通按钮** Button ，12号字 */
+(UIButton *)detailButton{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:14];
    return button;
}
/** **普通按钮** Button ，12号字 */
+(UIButton *)detailButtonAndSuperview:(UIView *)superview{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor whiteColor];
    [button setTitleColor:[UIColor colorWithRed:0x5f/255.f green:0x5f/255.f blue:0x5f/255.f alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:14];
    [superview addSubview:button];
    return button;
}
/** **完成** Button ，蓝色18号字 */
+(UIButton *)doneButton{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor colorWithRed:0x0B/255.f green:0x79/255.f blue:0xFF/255.f alpha:1];
    
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:18];
    return button;
}
/** **完成** Button ，蓝色18号字 */
+(UIButton *)doneButtonAndSuperview:(UIView *)superview{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor colorWithRed:0x0B/255.f green:0x79/255.f blue:0xFF/255.f alpha:1];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:18];
    [superview addSubview:button];
    return button;
}
/** 纯图片Button */
+(UIButton *)imageButton:(NSString *)imageName{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return button;
}
/** 纯图片Button */
+(UIButton *)imageButton:(NSString *)imageName andSuperview:(UIView *)superview{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [superview addSubview:button];
    return button;
}
@end

@implementation FastButtonModel

@synthesize titleEdgeInsets=_titleEdgeInsets;
@synthesize imageEdgeInsets=_imageEdgeInsets;
@synthesize showsTouchWhenHighlighted=_showsTouchWhenHighlighted;
@synthesize titleFont=_titleFont;
@synthesize titleFontSize=_titleFontSize;
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
-(FastTitleFontSize)titleFontSize{
    if (!_titleFontSize) {
        __weak __typeof(self) weakSelf = self;
        _titleFontSize=^(CGFloat size){
            weakSelf.button.titleLabel.font=[UIFont systemFontOfSize:size];
            return weakSelf;
        };
    }
    return _titleFontSize;
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
