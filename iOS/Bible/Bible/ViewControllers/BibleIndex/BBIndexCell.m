//
//  BBIndexCell.m
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "BBIndexCell.h"

#import "BBIndexModel.h"

#import <Masonry/Masonry.h>

@interface BBIndexCell ()

@property (nonatomic, strong) UILabel *idLabel;
@property (nonatomic, strong) UILabel *pinyinLabel;
@property (nonatomic, strong) UILabel *fullNameLabel;
@property (nonatomic, strong) UILabel *shortNameLabel;

@end

@implementation BBIndexCell

- (void)configWithModel:(BBIndexModel *)model
{
    // config data
    self.idLabel.text = [NSString stringWithFormat:@"%ld", (long)model.ChapterNumber];
    self.shortNameLabel.text = model.ShortName;
    self.fullNameLabel.text = model.FullName;
    self.pinyinLabel.text = model.PinYin;
    // config ui
    [self layoutUI];
}

- (void)layoutUI
{
    // TODO: UI设计

    self.contentView.backgroundColor = [UIColor grayColor];
    self.contentView.alpha = 0.97;
    
    [self.contentView addSubview:self.shortNameLabel];
    [self.shortNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(15);
        make.centerY.equalTo(self.contentView);
    }];
    
//    [self.contentView addSubview:self.idLabel];
//    [self.contentView addSubview:self.fullNameLabel];
//    [self.contentView addSubview:self.pinyinLabel];
    
    
}

#pragma mark - getter

- (UILabel *)idLabel
{
    if (!_idLabel) {
        _idLabel = [[UILabel alloc] init];
    }
    return _idLabel;
}

- (UILabel *)fullNameLabel
{
    if (!_fullNameLabel) {
        _fullNameLabel = [[UILabel alloc] init];
    }
    return _fullNameLabel;
}

- (UILabel *)shortNameLabel
{
    if (!_shortNameLabel) {
        _shortNameLabel = [[UILabel alloc] init];
    }
    return _shortNameLabel;
}

- (UILabel *)pinyinLabel
{
    if (!_pinyinLabel) {
        _pinyinLabel = [[UILabel alloc] init];
    }
    return _pinyinLabel;
}

+ (NSString *)identifier
{
    return @"BBIndexCell-Identifier";
}

@end
