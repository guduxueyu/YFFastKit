//
//  UIImageView+fast.h
//  HShieldMedicineProject
//
//  Created by 耿远风 on 2019/2/11.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FastImageViewModel;


typedef FastImageViewModel * (^FastImage)(UIImage *image);

@interface UIImageView (fast)

-(FastLabelModel *)fast;

+(UIImageView *)imageView;
+(UIImageView *)imageViewAndSuperview:(UIView *)superview;

@end
@interface FastImageViewModel : FastModel

@property (nonatomic,strong)UIImageView *imageView;

@property (nonatomic, copy, readonly)FastImage image;


@end

