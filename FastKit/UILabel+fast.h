//
//  UILabel+fast.h
//  CXJOrderApp
//
//  Created by 耿远风 on 2018/11/3.
//  Copyright © 2018年 耿远风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FastModel.h"

@class FastLabelModel;

typedef FastLabelModel * (^FastText)(NSString *text);
typedef FastLabelModel * (^FastFont)(UIFont *font);
typedef FastLabelModel * (^FastTextColor)(UIColor *textColor);
typedef FastLabelModel * (^FastAttributedText)(NSAttributedString *attributedText);
typedef FastLabelModel * (^FastHighlightedTextColor)(UIColor *highlightedTextColor);
typedef FastLabelModel * (^FastTextAlignment)(NSTextAlignment textAlignment);
typedef FastLabelModel * (^FastLineBreakMode)(NSLineBreakMode lineBreakMode);
typedef FastLabelModel * (^FastNumberOfLines)(NSInteger numberOfLines);


@interface UILabel (fast)

-(FastLabelModel *)fast;

/** **标题** Label，15号字 */
+(UILabel *)titleLabel;
/** **标题** Label，15号字 ，并添加到父视图 */
+(UILabel *)titleLabelAndSuperview:(UIView *)superview;
/** **大标题** Label，18号字 */
+(UILabel *)bigTitleLabel;
/** **大标题** Label，18号字 ，并添加到父视图 */
+(UILabel *)bigTitleLabelAndSuperview:(UIView *)superview;
/** **内容** Label，14号字 */
+(UILabel *)contentLabel;
/** **内容** Label，14号字 ，并添加到父视图 */
+(UILabel *)contentLabelAndSuperview:(UIView *)superview;
/** **详情** Label，12号字 */
+(UILabel *)detailLabel;
/** **详情** Label，12号字 ，并添加到父视图 */
+(UILabel *)detailLabelAndSuperview:(UIView *)superview;
@end

@interface FastLabelModel : FastModel

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
