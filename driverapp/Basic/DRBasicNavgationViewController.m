//
//  DRBasicNavgationViewController.m
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import "DRBasicNavgationViewController.h"

@interface DRBasicNavgationViewController ()

@end

@implementation DRBasicNavgationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count>0) {
        UIButton *backBtn=[UIButton  buttonWithType:UIButtonTypeCustom ];
        backBtn.frame = CGRectMake(0,0,30, 22) ;
        [backBtn setImage:[UIImage imageNamed:@"icon_返回"] forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"icon_返回"] forState:UIControlStateHighlighted];
              [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
              viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    }
    [super pushViewController:viewController animated:animated];
    
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
#pragma mark - ---------------- 事件 ------------------
#pragma mark - 返回
- (void)backAction
{
    [self popViewControllerAnimated:YES];
}
@end
