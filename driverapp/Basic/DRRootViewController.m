//
//  DRRootViewController.m
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import "DRRootViewController.h"

@interface DRRootViewController ()<UITabBarControllerDelegate>

@end

@implementation DRRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCustomAppearance];
    [self setTabBarController];
    [self setTabBarItemImages];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 设置TabBarController
- (void)setTabBarController
{
    self.delegate = self;
}

#pragma mark - 自定义控件外观
- (void)setCustomAppearance
{
    /* UINavigationBar */
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    NSDictionary *nNormalDictionary = @{NSForegroundColorAttributeName: [UIColor whiteColor],
                                        NSFontAttributeName:[UIFont boldSystemFontOfSize:18.0f]};
    [[UINavigationBar appearance] setTitleTextAttributes:nNormalDictionary];
    
    /* UITarBarItem */
    // 设置正常状态下TabBarItem字体
    NSDictionary *normalDictionary = @{NSForegroundColorAttributeName: DRRGB(149, 149, 149),
                                       NSFontAttributeName:[UIFont systemFontOfSize:11.0f]};
    [[UITabBarItem appearance] setTitleTextAttributes:normalDictionary forState:UIControlStateNormal];
    // 设置选中状态下TabBarItem字体
    NSDictionary *selectedDictionary = @{NSForegroundColorAttributeName: DRRGB(230, 57, 85),
                                         NSFontAttributeName:[UIFont systemFontOfSize:11.0f]};
    [[UITabBarItem appearance] setTitleTextAttributes:selectedDictionary forState:UIControlStateSelected];
    [[UITabBar appearance]setBackgroundColor:DRRGB(255, 255, 255)];
}

#pragma mark - 修改tabarItem 图片
- (void)setTabBarItemImages
{
    
    //首页tabbar
    self.homeNavgationController = self.viewControllers[0];
    _homeNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"tab_investment"] selectedImage:[UIImage imageNamed:@"tab_select_investment"]];
    _homeNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_select_investment"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //更多tabbar
    self.moreNavgationController = self.viewControllers[1];
    _moreNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"tab_loan"] selectedImage:[UIImage imageNamed:@"tab_select_loan"]];
    _moreNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_select_loan"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //我的tabbar
    self.myNavgationController = self.viewControllers[2];
    _myNavgationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tab_my"] selectedImage:[UIImage imageNamed:@"tab_select_my"]]
    ;
    _myNavgationController.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_select_my"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    self.viewControllers = @[self.homeNavgationController,self.moreNavgationController ,self.myNavgationController];
    
}

#pragma mark - UITabBarControllerDelegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    
    return YES;
}


@end
