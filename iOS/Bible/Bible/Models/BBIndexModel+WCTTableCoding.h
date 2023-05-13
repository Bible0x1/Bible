//
//  BBIndexModel+WCTTableCoding.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "BBIndexModel.h"
#import <WCDBObjc/WCDBObjc.h>

@interface BBIndexModel (WCTTableCoding) <WCTTableCoding>

/*
WCDB_PROPERTY(<#property1#>)
WCDB_PROPERTY(<#property2#>)
WCDB_PROPERTY(<#property3#>)
WCDB_PROPERTY(<#property4#>)
WCDB_PROPERTY(<#.........#>)
 */

WCDB_PROPERTY(SN);
WCDB_PROPERTY(KindSN);
WCDB_PROPERTY(ChapterNumber);
WCDB_PROPERTY(NewOrOld);
WCDB_PROPERTY(PinYin);
WCDB_PROPERTY(ShortName);
WCDB_PROPERTY(FullName);

@end
