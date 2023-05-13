//
//  NSArray+Bible.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray(Bible)

- (NSArray *)bb_filter:(BOOL (^)(id _Nonnull))block;
- (NSArray<id> *)bb_map:(id  _Nonnull (^)(id _Nonnull))block;

@end

NS_ASSUME_NONNULL_END
