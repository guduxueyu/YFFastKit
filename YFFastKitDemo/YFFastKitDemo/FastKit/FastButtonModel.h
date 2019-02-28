//
//  FastButtonModel.h
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FastButtonModel : FastModel
typedef FastButtonModel * (^FastTitleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
typedef FastButtonModel * (^FastImageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
typedef FastButtonModel * (^FastShowsTouchWhenHighlighted)(BOOL showsTouchWhenHighlighted);
typedef FastButtonModel * (^FastTitleFont)(UIFont *titleFont);
typedef FastButtonModel * (^FastTitleNormal)(NSString *titleNormal);
typedef FastButtonModel * (^FastTitleColorNormal)(UIColor *titleColorNormal);
typedef FastButtonModel * (^FastTitleSelect)(NSString *titleSelect);
typedef FastButtonModel * (^FastTitleColorSelect)(UIColor *titleColorSelect);
typedef FastButtonModel * (^FastAttributedTitleNormal)(NSAttributedString *attributedTitleNormal);
typedef FastButtonModel * (^FastAttributedTitleSelect)(NSAttributedString *attributedTitleSelect);
typedef FastButtonModel * (^FastBackgroundImageNormal)(NSString *backgroundImageNormal);
typedef FastButtonModel * (^FastBackgroundImageSelect)(NSString *backgroundImageSelect);
typedef FastButtonModel * (^FastImageNormal)(NSString *imageNormal);
typedef FastButtonModel * (^FastImageSelect)(NSString *imageSelect);


@property (nonatomic,strong)UIButton *button;

/** 文字内边距 */
@property (nonatomic, copy, readonly)FastTitleEdgeInsets titleEdgeInsets;
/** 图片内边距 */
@property (nonatomic, copy, readonly)FastImageEdgeInsets imageEdgeInsets;
/** 点击高亮 默认NO */
@property (nonatomic, copy, readonly)FastShowsTouchWhenHighlighted showsTouchWhenHighlighted;
/** Button的文本字号 */
@property (nonatomic, copy, readonly)FastTitleFont titleFont;
/** 普通状态下的文本 */
@property (nonatomic, copy, readonly)FastTitleNormal titleNormal;
/** 普通状态下 文本颜色 */
@property (nonatomic, copy, readonly)FastTitleColorNormal titleColorNormal;
/** 选中状态下的文本 */
@property (nonatomic, copy, readonly)FastTitleSelect titleSelect;
/** 选中状态下 文本颜色 */
@property (nonatomic, copy, readonly)FastTitleColorSelect titleColorSelect;
/** 普通状态下的富文本 */
@property (nonatomic, copy, readonly)FastAttributedTitleNormal attributedTitleNormal;
/** 选中状态下的富文本 */
@property (nonatomic, copy, readonly)FastAttributedTitleSelect attributedTitleSelect;
/** 普通状态下的背景图 */
@property (nonatomic, copy, readonly)FastBackgroundImageNormal backgroundImageNormal;
/** 选中状态下的背景图 */
@property (nonatomic, copy, readonly)FastBackgroundImageSelect backgroundImageSelect;
/** 普通状态下的图片 */
@property (nonatomic, copy, readonly)FastImageNormal imageNormal;
/** 选中状态下的图片 */
@property (nonatomic, copy, readonly)FastImageSelect imageSelect;
@end



NS_ASSUME_NONNULL_END
