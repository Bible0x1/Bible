//
//  NSArray+Bible.m
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "NSArray+Bible.h"

@implementation NSArray(Bible)

- (NSArray *)bb_filter:(BOOL (^)(id _Nonnull))block {
    NSParameterAssert(block != nil);
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (block(obj)) {
            [result addObject:obj];
        }
    }];
    return [result copy];
}

- (NSArray *)bb_:(BOOL (^)(id _Nonnull))block {
    NSParameterAssert(block != nil);
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (block(obj)) {
            [result addObject:obj];
        }
    }];
    return [result copy];
}

- (NSArray<id> *)bb_map:(id  _Nonnull (^)(id _Nonnull))block {
    NSParameterAssert(block != nil);
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id mapped = block(obj) ? : [NSNull null];
        [result addObject:mapped];
    }];
    return [result copy];
}

@end
