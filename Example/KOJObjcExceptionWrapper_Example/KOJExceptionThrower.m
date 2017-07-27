//
//  KOJExceptionThrower.m
//  KOJObjcExceptionWrapper
//
//  Created by Koji Murata on 2017/07/27.
//  Copyright © 2017年 Koji Murata. All rights reserved.
//

#import "KOJExceptionThrower.h"

@implementation KOJExceptionThrower
+(void)run
{
  [NSException raise:@"test" format:@"test throw"];
}
@end
