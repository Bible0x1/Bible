//
//  BibleIndexViewController.m
//  Bible
//
//  Created by 里生 on 2023/5/13.
//

#import "BibleIndexViewController.h"

#import <Masonry/Masonry.h>

#import "BBMacros.h"
#import "NSArray+Bible.h"

#import "BBIndexCell.h"
#import "BBDataProvider.h"
#import "BibleContentViewController.h"

/**
索引页
@TODO:
 1. 优化UI
 2. sectionHeader, Footer
 */

@interface BibleIndexViewController ()
<
UICollectionViewDelegate,
UICollectionViewDataSource
>

// data
@property (nonatomic, strong) BBDataProvider *dataProvider;
@property (nonatomic, strong) NSArray<BBIndexModel *> *indexModels; // 全部
@property (nonatomic, strong) NSArray<BBIndexModel *> *olddIndexModels; // 旧约
@property (nonatomic, strong) NSArray<BBIndexModel *> *newwIndexModels; // 新约, 加w是因为关键字保留问题

// ui
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation BibleIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupData];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupData
{
    self.dataProvider = [BBDataProvider sharedInstance];
    self.indexModels = [self.dataProvider obtainIndexModels];
    self.olddIndexModels = [self.indexModels bb_filter:^BOOL(BBIndexModel * _Nonnull model) {
        return model.NewOrOld;
    }];
    self.newwIndexModels = [self.indexModels bb_filter:^BOOL(BBIndexModel * _Nonnull model) {
        return !model.NewOrOld;
    }];
}


- (void)setupUI
{
    self.view.backgroundColor = [UIColor greenColor];
    [self setupCollectionView];
}

- (void)setupCollectionView
{
    // config
    UICollectionViewLayout *layout = [self obtainCollectionLayout];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [collectionView registerClass:[BBIndexCell class] forCellWithReuseIdentifier:[BBIndexCell identifier]];
    
    // assign
    self.collectionView = collectionView;
    [self.view addSubview:self.collectionView];
    
    // layout
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (UICollectionViewLayout *)obtainCollectionLayout
{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(58, 58);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.minimumLineSpacing = 10.f;
    flowLayout.minimumInteritemSpacing = 10.f;
    flowLayout.sectionInset = UIEdgeInsetsMake(20.f, 20.f, 30.f, 20.f);
    return flowLayout;
}


#pragma mark - UICollectionView | DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0) {
        return [self.olddIndexModels count];
    }
    if (section == 1) {
        return [self.newwIndexModels count];
    }
    return 0;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[BBIndexCell identifier] forIndexPath:indexPath];
    BBIndexCell *bCell = BBDynamicCast(cell, BBIndexCell);
    BBIndexModel *bModel = [self modelAtIndexPath:indexPath];
    [bCell configWithModel:bModel];
    return bCell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}


#pragma mark - UICollectionView | Delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    // 这里要触发转场，得想想怎么做，可能是把自己当作一个navigationController
    BBIndexModel *model = [self modelAtIndexPath:indexPath];
    
    // make vc and jump
    BibleContentViewController *contentVC = [[BibleContentViewController alloc] initWithBBIndexModel:model];
    
    [self presentViewController:contentVC animated:YES completion:^{
        // pass
    }];
}


#pragma mark - Utils

- (BBIndexModel *)modelAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return [self.olddIndexModels objectAtIndex:indexPath.row];
    }
    
    if (indexPath.section == 1) {
        return [self.newwIndexModels objectAtIndex:indexPath.row];
    }
    
    return nil;
}

@end



