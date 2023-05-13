//
//  BBDataProvider.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <Foundation/Foundation.h>

#import "BBIndexModel.h"
#import "BBLectionModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BBDataProvider : NSObject
+ (instancetype)sharedInstance;
- (instancetype)init NS_UNAVAILABLE;
- (NSArray<BBIndexModel *> *)obtainIndexModels;
- (NSArray<BBLectionModel *> *)obtainLectionsWithIndexModel:(BBIndexModel *)indexModel;

@end

NS_ASSUME_NONNULL_END
