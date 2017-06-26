//
//  DRConfig.h
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import <Foundation/Foundation.h>

UIKIT_EXTERN NSString *const DRHttpIP;

// *******************************************************************************************

#define DRWindow ((UIWindow *)[[[UIApplication sharedApplication] windows] lastObject])
#define DRDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define DRScreenWidth [UIScreen mainScreen].bounds.size.width
#define DRScreenHeight [UIScreen mainScreen].bounds.size.height
#define DRScreenScale [UIScreen mainScreen].scale
#define DRNavigationWidth(controller) controller.navigationController.navigationBar.frame.size.width
#define DRNavigationHeight(controller) controller.navigationController.navigationBar.frame.size.height
#define DRTabBarWidth(controller) controller.tabBarController.tabBar.frame.size.width
#define DRTabBarHeight(controller) controller.tabBarController.tabBar.frame.size.height
#define DRViewWidth(view) view.frame.size.width
#define DRViewHeight(view) view.frame.size.height
#define DRViewX(view) view.frame.origin.x
#define DRViewY(view) view.frame.origin.y
#define DROffset(viewController) [DMTools getOffset:viewController]
#define DRViewRect(viewcontroller)  CGRectMake(viewcontroller.view.frame.origin.x, viewcontroller.view.frame.origin.y, viewcontroller.view.frame.size.width, viewcontroller.view.frame.size.height-DMOffset(viewcontroller))
#define DRFast(x,y,w,h)  CGRectMake(x,y, DRScreenWidth/320*w, DRScreenWidth/320*h)  //等比拉伸
#define DRFastOnlyWidth(x,y,w,h)  CGRectMake(x,y, w, h)  //宽度拉伸
#define iPhone6 (DMScreenWidth)>320
#define DRFontAdaptive(fontSize)  DMScreenWidth/320*fontSize

#define DRFont(fontSize)  [UIFont systemFontOfSize:fontSize]

// ---------- 颜色 ----------
#define DRRGB(r, g, b) [UIColor colorWithRed:(r)/255.f green:(g)/255.f blue:(b)/255.f alpha:1.f]
#define DRRGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define DRColorWithHex(hex) [DRTools colorWithHexString:hex]
#define DRWhiteColor  [UIColor whiteColor]
#define DRButtonNormalColor  DRRGB(209, 30, 59)
#define DRButtonHighlightColor  DRRGB(230,60,88)


// ---------- URL ----------

