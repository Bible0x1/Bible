//
//  BBLectionModel+WCTTableCoding.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "BBLectionModel.h"
#import <WCDBObjc/WCDBObjc.h>

@interface BBLectionModel (WCTTableCoding) <WCTTableCoding>

/*
WCDB_PROPERTY(<#property1#>)
WCDB_PROPERTY(<#property2#>)
WCDB_PROPERTY(<#property3#>)
WCDB_PROPERTY(<#property4#>)
WCDB_PROPERTY(<#.........#>)
 */
WCDB_PROPERTY(ID)
WCDB_PROPERTY(VolumnSN)
WCDB_PROPERTY(ChapterSN)
WCDB_PROPERTY(VerseSN)
WCDB_PROPERTY(Lection)
WCDB_PROPERTY(SoundBegin)
WCDB_PROPERTY(SoundEnd)

@end
