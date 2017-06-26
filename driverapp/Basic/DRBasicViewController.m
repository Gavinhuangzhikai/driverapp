//
//  DRBasicViewControllerViewController.m
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import "DRBasicViewController.h"

@interface DRBasicViewController ()

@end

@implementation DRBasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeTop;
    }
    self.navigationController.navigationBar.translucent = NO;
    
    [self initParameters];
    [self initUIView];
    [self getDataFromNet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ---------------- 初始化 -----------------
#pragma mark - 参数初始化
- (void)initParameters
{
}

#pragma mark - 界面初始化
- (void)initUIView
{
    
       
    [self setNeedsStatusBarAppearanceUpdate];
    
}

#pragma mark - ---------------- 请求 ------------------
#pragma mark - 网络请求
- (void)getDataFromNet
{
}


@end
