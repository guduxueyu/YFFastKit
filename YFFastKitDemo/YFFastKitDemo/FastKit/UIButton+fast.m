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
    [button setTitle:@"导航" forState:UIControlStateNormal];
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
    [button setTitle:@"导航" forState:UIControlStateNormal];
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
/** **完成** Button ，蓝色18号字 */
+(UIButton *)doneButton{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor=[UIColor colorWithRed:0x0B/255.f green:0x79/255.f blue:0xFF/255.f alpha:1];
    [button setTitle:@"导航" forState:UIControlStateNormal];
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
@end

