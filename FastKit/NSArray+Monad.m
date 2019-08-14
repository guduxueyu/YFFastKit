//
//  NSArray+Monad.m
//  OCMap
//
//  Created by 耿远风 on 2019/7/13.
//  Copyright © 2019 耿远风. All rights reserved.
//

#import "NSArray+Monad.h"

@implementation NSArray (Monad)

- (NSArray*)map:(id(^)(id))transform {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [array addObject:transform(obj)];
    }];
    return array;
    
}

- (NSArray*)filter:(BOOL(^)(id))includeElement {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (includeElement(obj)) {
            [array addObject:obj];
        }
    }];
    
    return array;
}
@end
