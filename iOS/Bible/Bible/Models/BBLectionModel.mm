//
//  BBLectionModel.mm
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "BBLectionModel+WCTTableCoding.h"
#import "BBLectionModel.h"

@implementation BBLectionModel

/*
WCDB_IMPLEMENTATION(BBLectionModel)
WCDB_SYNTHESIZE(<#property1#>)
WCDB_SYNTHESIZE(<#property2#>)
WCDB_SYNTHESIZE(<#property3#>)
WCDB_SYNTHESIZE(<#property4#>)
WCDB_SYNTHESIZE_COLUMN(<#property5#>, "<#column name#>")   // Custom column name

WCDB_PRIMARY_AUTO_INCREMENT(<#property#>)

WCDB_INDEX(<#_index_subfix#>, <#property#>)
 
 */

WCDB_IMPLEMENTATION(BBLectionModel);
WCDB_SYNTHESIZE(ID)
WCDB_SYNTHESIZE(VolumnSN)
WCDB_SYNTHESIZE(ChapterSN)
WCDB_SYNTHESIZE(VerseSN)
WCDB_SYNTHESIZE(Lection)
WCDB_SYNTHESIZE(SoundBegin)
WCDB_SYNTHESIZE(SoundEnd)

@end
