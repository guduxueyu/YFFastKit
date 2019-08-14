//
//  UIButton+layout.m
//  zhouyimed-ios
//
//  Created by 耿远风 on 2019/7/17.
//  Copyright © 2019 zzcao. All rights reserved.
//
#define objc_exchangeMethodAToB(methodA,methodB) method_exchangeImplementations(class_getInstanceMethod([self class], methodA),class_getInstanceMethod([self class], methodB));
#import "UIButton+layout.h"

@implementation UIButton (layout)
+ (void)load {
    objc_exchangeMethodAToB(@selector(setHighlighted:),
                            @selector(hcb_setHighlighted:));
    objc_exchangeMethodAToB(@selector(setEnabled:),
                            @selector(hcb_setEnabled:));
    objc_exchangeMethodAToB(@selector(setSelected:),
                            @selector(hcb_setSelected:));
}
#pragma mark - override
- (void)hcb_setSelected:(BOOL)selected {
    [self hcb_setSelected:selected];
    [self updateButton];
}

- (void)hcb_setEnabled:(BOOL)enabled {
    [self hcb_setEnabled:enabled];
    [self updateButton];
}

- (void)hcb_setHighlighted:(BOOL)highlighted {
    [self hcb_setHighlighted:highlighted];
    [self updateButton];
}
-(void)updateButton{
    UIColor *boderColor=self.borderColorDic[@(self.state)];
    if (boderColor) {
        self.layer.borderColor=boderColor.CGColor;
    }
    UIColor *backgroundColor=self.backgroundColorDic[@(self.state)];
    if (backgroundColor) {
        self.backgroundColor=backgroundColor;
    }
}
- (void)setborderColor:(UIColor *)borderColor forState:(UIControlState)state{
    self.borderColorDic[@(state)]=borderColor;
    [self updateButton];
}
-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state{
    self.backgroundColorDic[@(state)]=backgroundColor;
    [self updateButton];
}
- (void)setBorderColorDic:(NSMutableDictionary *)borderColorDic{
    objc_setAssociatedObject(self, @"borderColorDic", borderColorDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSMutableDictionary *)borderColorDic{
    NSMutableDictionary *dic=objc_getAssociatedObject(self, @"borderColorDic");
    if (!dic) {
        dic=[NSMutableDictionary dictionary];
    }
    objc_setAssociatedObject(self, @"borderColorDic", dic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return dic;
}
- (void)setBackgroundColorDic:(NSMutableDictionary *)backgroundColorDic{
    objc_setAssociatedObject(self, @"backgroundColorDic", backgroundColorDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSMutableDictionary *)backgroundColorDic{
    NSMutableDictionary *dic=objc_getAssociatedObject(self, @"backgroundColorDic");
    if (!dic) {
        dic=[NSMutableDictionary dictionary];
    }
    objc_setAssociatedObject(self, @"backgroundColorDic", dic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return dic;
}

- (void)setButtonActionBlock:(YFKit_UIButtonActionBlock)buttonActionBlock{
    [self addTarget:self action:@selector(buttonBlockAction) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(self, @"buttonActionBlock", buttonActionBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (YFKit_UIButtonActionBlock)buttonActionBlock{
    return objc_getAssociatedObject(self, @"buttonActionBlock");
}
-(void)buttonBlockAction{
    if (self.buttonActionBlock) {
        self.buttonActionBlock(self);
    }
}
@end
