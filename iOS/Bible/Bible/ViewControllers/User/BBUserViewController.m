//
//  BBUserViewController.m
//  Bible
//
//  Created by 里生 on 2023/5/13.
//

#import "BBUserViewController.h"

@interface BBUserViewController ()

@end

@implementation BBUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfig];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupConfig
{
    
}

- (void)setupUI
{
    self.view.backgroundColor = [UIColor grayColor];
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
