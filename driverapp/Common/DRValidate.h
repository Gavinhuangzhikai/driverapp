//
//  DRValidate.h
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRValidate : NSObject
#pragma mark 判断是否为合法手机号
+(BOOL)isValidateMobileNumber:(NSString *)number;
#pragma mark - 判断输入是否为空
+ (BOOL)isEmpty:(NSString *)value;
#pragma mark - 判断密码长度是否合法
+ (BOOL)isLegalPassword:(NSString *)pwd;

@end
