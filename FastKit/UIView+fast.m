//
//  UIView+fast.m
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/5.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import "UIView+fast.h"

@implementation UIView (fast)

-(FastModel *)fast{
    FastModel *model=[[FastModel alloc] init];
    model.view=self;
    return model;
}
+(UIView *)lineView{
    UIView *line=[[UIView alloc] init];
    line.backgroundColor=[UIColor colorWithRed:0xc8/255.f green:0xc8/255.f blue:0xc8/255.f alpha:1];
    return line;
}
+(UIView *)lineViewAndSuperview:(UIView *)superview{
    UIView *line=[[UIView alloc] init];
    line.backgroundColor=[UIColor colorWithRed:0xc8/255.f green:0xc8/255.f blue:0xc8/255.f alpha:1];
    [superview addSubview:line];
    return line;
}
+(UIView *)backView{
    UIView *backView=[[UIView alloc] init];
    backView.backgroundColor=[UIColor whiteColor];
    return backView;
}
+(UIView *)backViewAndSuperview:(UIView *)superview{
    UIView *backView=[[UIView alloc] init];
    backView.backgroundColor=[UIColor whiteColor];
    [superview addSubview:backView];
    return backView;
}
@end
