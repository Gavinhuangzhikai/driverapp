//
//  DRValidate.m
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import "DRValidate.h"

@implementation DRValidate
#pragma mark 判断是否为合法手机号
+(BOOL)isValidateMobileNumber:(NSString *)number
{
    if ([number length] <11) return NO;
    
    NSString *MOBILE = @"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|7[06-8])\\d{8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    
    return [regextestmobile evaluateWithObject:number];
}

#pragma mark - 判断输入是否为空
+ (BOOL)isEmpty:(NSString *)value
{
    if (value==nil||[[DRTools stringTrimWhitespace:value] isEqualToString:@""]) {
        return YES;
    }else if ([value isKindOfClass:[NSNull class]]){
        return YES;
    }else if (value ==nil){
        return YES;
    }
    return NO;
}

#pragma mark - 判断密码是否合法
+ (BOOL)isLegalPassword:(NSString *)pwd
{
    NSInteger length = pwd.length;
    if (length<6 || length>18) { // 密码6到18位
        return NO;
    }
    return YES;
}






@end
