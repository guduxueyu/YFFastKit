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
