//
//  BBMainViewController.m
//  Bible
//
//  Created by 里生 on 2023/5/13.
//

#import "BBMainViewController.h"

#import "BBFeedViewController.h" // feed
#import "BBUserViewController.h" // user
#import "BibleIndexViewController.h" // index
#import "BibleContentViewController.h" // content

/// **主页**
/// todo:
///  1. 底部导航
///  2. 圣经页面 / 章节导航栏
///  3. 分享Feed

@interface BBMainViewController ()

@property (nonatomic, strong) BBFeedViewController *feedVC;
@property (nonatomic, strong) BibleIndexViewController *indexVC;
@property (nonatomic, strong) BBUserViewController *userVC;

@end

@implementation BBMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfig];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupConfig
{
    [self createVCs];
    self.viewControllers = @[
        self.feedVC,
        self.indexVC, // 落地页
        self.userVC
//        [[BibleContentViewController alloc] init]
    ];
    self.selectedViewController = self.indexVC;
}

- (void)setupUI
{
    
}



#pragma mark - Create

- (void)createVCs
{
    self.feedVC = [self createFeedVC];
    self.userVC = [self createUserVC];
    self.indexVC = [self createIndexVC];
}

- (BBFeedViewController *)createFeedVC
{
    BBFeedViewController *feedVC = [[BBFeedViewController alloc] init];
    // config here
    feedVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Feed" image:[UIImage imageNamed:@"feed"] selectedImage:[UIImage imageNamed:@"feed_fill"]];
    return feedVC;
}

- (BibleIndexViewController *)createIndexVC
{
    BibleIndexViewController *indexVC = [[BibleIndexViewController alloc] init];
    indexVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Index" image:[UIImage imageNamed:@"bible"] selectedImage:[UIImage imageNamed:@"bible_fill"]];
    return indexVC;
}

- (BBUserViewController *)createUserVC
{
    BBUserViewController *userVC = [[BBUserViewController alloc] init];
    userVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"User" image:[UIImage imageNamed:@"home"] selectedImage:[UIImage imageNamed:@"home_fill"]];
    return userVC;
}

@end
