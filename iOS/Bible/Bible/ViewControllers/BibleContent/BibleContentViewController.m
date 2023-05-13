//
//  BibleContentViewController.m
//  Bible
//
//  Created by 里生 on 2023/5/13.
//

#import "BibleContentViewController.h"

#import "BBMacros.h"

#import "BBDataProvider.h"

#import <Masonry/Masonry.h>
/**
 经文页面
 */

@interface BibleContentViewController ()
<
UITextViewDelegate,
NSLayoutManagerDelegate
>

// data
@property (nonatomic, strong) BBDataProvider *dataProvider;
@property (nonatomic, strong) NSArray<BBLectionModel *> *lectionModels;

// ui
@property (nonatomic, strong) UITextView *textView;

@end

@implementation BibleContentViewController

- (instancetype)initWithBBIndexModel:(BBIndexModel *)model
{
    self = [super init];
    if (self) {
        // 获得经文
        NSArray<BBLectionModel *> *lectionModels = [self.dataProvider obtainLectionsWithIndexModel:model];
        self.lectionModels = lectionModels;
        // 展示经文
    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupUI
{
    self.view.backgroundColor = [UIColor systemPinkColor];
    // config
    NSString *content = [self combineAllString];
    

    CGRect frame = self.view.frame;
    NSTextContainer *textContainer = [[NSTextContainer alloc] initWithSize:frame.size];
    textContainer.widthTracksTextView = YES;
    
    NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
    [layoutManager addTextContainer:textContainer];
    layoutManager.delegate = self;
    NSTextStorage *textStorage = [[NSTextStorage alloc] init];
    [textStorage addLayoutManager:layoutManager];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectZero textContainer:textContainer];
    
    textView.backgroundColor = [UIColor whiteColor];
    textView.scrollEnabled = YES;
    textView.editable = NO; // 不可编辑
    textView.delegate = self;
    textView.text = content;
    self.textView = textView;
    [self.view addSubview:self.textView];
    // layout
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20.f);
        make.left.equalTo(self.view).offset(10.f);
        make.right.equalTo(self.view).offset(-10.f);
        make.height.equalTo(self.view).offset(-10.f);
    }];
}

- (BBDataProvider *)dataProvider
{
    if (!_dataProvider) {
        _dataProvider = [BBDataProvider sharedInstance];
    }
    return _dataProvider;
}

- (NSString *)combineAllString
{
    NSArray<NSString *> *lectionsStr = [self.lectionModels bb_map:^NSString * _Nonnull(BBLectionModel * _Nonnull model) {
        return model.Lection;
    }];
    NSString *result = [lectionsStr componentsJoinedByString:@""];
    return result;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
