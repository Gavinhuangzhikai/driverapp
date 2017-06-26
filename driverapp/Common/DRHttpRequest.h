//
//  DRHttpRequest.h
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRHttpRequest : NSObject
/**
 *  监测网络的可链接性
 *
 * @param strUrl       检测的网络地址
 */
+ (void)netWorkReachabilityWithURLString:(NSString *)strUrl;

/**
 *  当前请求请求
 *
 *  @param url         请求路径
 *  @param parameters  请求参数
 *  @param success     请求成功后的回调
 *  @param failure     请求失败后的回调
 */
+ (void)currentRequestType:(NSString *)method requestURL:(NSString *)url parameters:(NSDictionary *)parameters success:(void(^)(id responseObj))success failure:(void(^)(NSError *error))failure;
@end
