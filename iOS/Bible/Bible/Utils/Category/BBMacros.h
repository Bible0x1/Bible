//
//  BBMacros.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <Foundation/Foundation.h>

#import "NSArray+Bible.h"

#define BBDynamicCast(x, c)  (c *)([x isKindOfClass:[c class]] ? x : nil)
