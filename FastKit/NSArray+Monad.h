//
//  NSArray+Monad.h
//  OCMap
//
//  Created by 耿远风 on 2019/7/13.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Monad)
- (NSArray*)map:(id(^)(id))transform;
- (NSArray*)filter:(BOOL(^)(id))includeElement;
@end

NS_ASSUME_NONNULL_END
