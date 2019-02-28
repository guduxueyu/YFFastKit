//
//  UIImageView+fast.m
//  HShieldMedicineProject
//
//  Created by 耿远风 on 2019/2/11.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "UIImageView+fast.h"

@implementation UIImageView (fast)

-(FastImageViewModel *)fast{
    FastImageViewModel *model=[[FastImageViewModel alloc] init];
    model.imageView=self;
    model.view=(UIView *)self;
    return model;
}

+(UIImageView *)imageView{
    UIImageView *imgView=[[UIImageView alloc]init];
    imgView.contentMode=UIViewContentModeScaleAspectFill;
    imgView.clipsToBounds=YES;
    return imgView;
}
+(UIImageView *)imageViewAndSuperview:(UIView *)superview{
    UIImageView *imgView=[[UIImageView alloc]init];
    imgView.contentMode=UIViewContentModeScaleAspectFill;
    imgView.clipsToBounds=YES;
    [superview addSubview:imgView];
    return imgView;
}
@end
