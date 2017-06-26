//
//  DRRootViewController.h
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DRBasicNavgationViewController.h"
@interface DRRootViewController : UITabBarController
@property (nonatomic, strong) DRBasicNavgationViewController *homeNavgationController;
@property (nonatomic, strong) DRBasicNavgationViewController *moreNavgationController;
@property (nonatomic, strong) DRBasicNavgationViewController *myNavgationController;

@end
