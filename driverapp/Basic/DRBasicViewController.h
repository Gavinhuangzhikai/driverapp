//
//  DRBasicViewController.h
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DRBasicViewController: UIViewController

@property (nonatomic, strong) MBProgressHUD *hud;

- (void)initParameters; // 参数初始化
- (void)initUIView; // 页面UI初始化
- (void)getDataFromNet; // 网络数据请求



@end
