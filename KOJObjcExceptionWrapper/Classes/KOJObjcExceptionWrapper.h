//
//  KOJObjcExceptionWrapper.h
//  Pods
//
//  Created by Koji Murata on 2016/06/22.
//
//

#import <UIKit/UIKit.h>

//! Project version number for KOJObjcExceptionWrapper.
FOUNDATION_EXPORT double KOJObjcExceptionWrapperVersionNumber;

//! Project version string for KOJObjcExceptionWrapper.
FOUNDATION_EXPORT const unsigned char KOJObjcExceptionWrapperVersionString[];

@interface KOJObjcExceptionWrapper : NSObject
UIKIT_EXTERN NSInteger const KOJObjcExceptionWrapperCode;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperDomain;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperName;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperReason;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperCallStackReturnAddresses;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperCallStackSymbols;
UIKIT_EXTERN NSString *const KOJObjcExceptionWrapperUserInfo;

+ (BOOL)throwsBlock:(void(^)(void))block error:(__autoreleasing NSError **)error;
@end
