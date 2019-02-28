//
//  FastImageViewModel.h
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastModel.h"

@interface FastImageViewModel : FastModel
typedef FastImageViewModel * (^FastImage)(UIImage *image);

@property (nonatomic,strong)UIImageView *imageView;

@property (nonatomic, copy, readonly)FastImage image;


@end
