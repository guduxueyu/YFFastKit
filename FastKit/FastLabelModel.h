//
//  FastLabelModel.h
//  YFFastKitDemo
//
//  Created by 耿远风 on 2019/2/28.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "FastModel.h"

NS_ASSUME_NONNULL_BEGIN


@interface FastLabelModel : FastModel
typedef FastLabelModel * (^FastText)(NSString *text);
typedef FastLabelModel * (^FastFont)(UIFont *font);
typedef FastLabelModel * (^FastTextColor)(UIColor *textColor);
typedef FastLabelModel * (^FastAttributedText)(NSAttributedString *attributedText);
typedef FastLabelModel * (^FastHighlightedTextColor)(UIColor *highlightedTextColor);
typedef FastLabelModel * (^FastTextAlignment)(NSTextAlignment textAlignment);
typedef FastLabelModel * (^FastLineBreakMode)(NSLineBreakMode lineBreakMode);
typedef FastLabelModel * (^FastNumberOfLines)(NSInteger numberOfLines);

@property (nonatomic,strong)UILabel *label;

@property (nonatomic, copy, readonly)FastText text;
@property (nonatomic, copy, readonly)FastFont font;
@property (nonatomic, copy, readonly)FastTextColor textColor;
@property (nonatomic, copy, readonly)FastAttributedText attributedText;
@property (nonatomic, copy, readonly)FastHighlightedTextColor highlightedTextColor;
@property (nonatomic, copy, readonly)FastTextAlignment textAlignment;
@property (nonatomic, copy, readonly)FastLineBreakMode lineBreakMode;
@property (nonatomic, copy, readonly)FastNumberOfLines numberOfLines;

@end

NS_ASSUME_NONNULL_END
