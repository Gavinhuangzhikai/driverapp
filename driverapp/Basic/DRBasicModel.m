//
//  DRBasicModel.m
//  driverapp
//
//  Created by hzk on 2017/6/26.
//  Copyright © 2017年 untrip. All rights reserved.
//

#import "DRBasicModel.h"

@implementation DRBasicModel

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
    
        self = [[self class]mj_objectWithKeyValues:dictionary];
    }
    return self;
}

@end
