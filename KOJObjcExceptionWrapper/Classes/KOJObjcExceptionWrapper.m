//
//  KOJObjcExceptionWrapper.m
//  Pods
//
//  Created by Koji Murata on 2016/06/22.
//
//

#import "KOJObjcExceptionWrapper.h"

NSInteger const KOJObjcExceptionWrapperCode                     = 0;
NSString *const KOJObjcExceptionWrapperDomain                   = @"koji.ObjcExceptionWrapper";
NSString *const KOJObjcExceptionWrapperName                     = @"KOJObjcExceptionWrapperName";
NSString *const KOJObjcExceptionWrapperReason                   = @"KOJObjcExceptionWrapperReason";
NSString *const KOJObjcExceptionWrapperCallStackReturnAddresses = @"KOJObjcExceptionWrapperCallStackReturnAddresses";
NSString *const KOJObjcExceptionWrapperCallStackSymbols         = @"KOJObjcExceptionWrapperCallStackSymbols";
NSString *const KOJObjcExceptionWrapperUserInfo                 = @"KOJObjcExceptionWrapperUserInfo";

@implementation KOJObjcExceptionWrapper
+ (BOOL)throws:(void(^)())block error:(__autoreleasing NSError **)error {
  @try {
    block();
    return YES;
  }
  @catch (NSException *exception) {
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    [userInfo setValue:exception.name                     forKey:KOJObjcExceptionWrapperName];
    [userInfo setValue:exception.reason                   forKey:KOJObjcExceptionWrapperReason];
    [userInfo setValue:exception.callStackReturnAddresses forKey:KOJObjcExceptionWrapperCallStackReturnAddresses];
    [userInfo setValue:exception.callStackSymbols         forKey:KOJObjcExceptionWrapperCallStackSymbols];
    [userInfo setValue:exception.userInfo                 forKey:KOJObjcExceptionWrapperUserInfo];
    
    *error = [NSError errorWithDomain:KOJObjcExceptionWrapperDomain code:KOJObjcExceptionWrapperCode userInfo:userInfo];
  }
}

@end
