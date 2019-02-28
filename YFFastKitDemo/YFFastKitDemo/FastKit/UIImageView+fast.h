//
//  UIImageView+fast.h
//  HShieldMedicineProject
//
//  Created by 耿远风 on 2019/2/11.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastImageViewModel.h"


@interface UIImageView (fast)

-(FastImageViewModel *)fast;

+(UIImageView *)imageView;
+(UIImageView *)imageViewAndSuperview:(UIView *)superview;

@end


