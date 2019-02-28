//
//  FastImageViewModel.m
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastImageViewModel.h"

@implementation FastImageViewModel

@synthesize image=_image;

-(FastImage)image{
    if (!_image) {
        __weak __typeof(self) weakSelf = self;
        _image=^(UIImage *image){
            weakSelf.imageView.image=image;
            return weakSelf;
        };
    }
    return _image;
}

@end

