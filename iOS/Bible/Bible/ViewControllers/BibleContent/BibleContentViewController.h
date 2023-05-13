//
//  BibleContentViewController.h
//  Bible
//
//  Created by 里生 on 2023/5/13.
//

#import <UIKit/UIKit.h>

#import "BBIndexModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BibleContentViewController : UIViewController

- (instancetype)initWithBBIndexModel:(BBIndexModel *)model;

@end

NS_ASSUME_NONNULL_END
