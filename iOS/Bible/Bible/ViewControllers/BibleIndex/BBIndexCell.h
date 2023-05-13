//
//  BBIndexCell.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



@class BBIndexModel;
@interface BBIndexCell : UICollectionViewCell

- (void)configWithModel:(BBIndexModel *)model;

+ (NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
