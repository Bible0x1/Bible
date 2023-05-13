//
//  BBIndexModel.mm
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import "BBIndexModel+WCTTableCoding.h"
#import "BBIndexModel.h"
//#import <WCDB/WCDB.h>
//#import <WCDBObjc/WCTMacro.h>

@implementation BBIndexModel

/*
WCDB_IMPLEMENTATION(BBIndexModel)
WCDB_SYNTHESIZE(<#property1#>)
WCDB_SYNTHESIZE(<#property2#>)
WCDB_SYNTHESIZE(<#property3#>)
WCDB_SYNTHESIZE(<#property4#>)
WCDB_SYNTHESIZE_COLUMN(<#property5#>, "<#column name#>")   // Custom column name

WCDB_PRIMARY_AUTO_INCREMENT(<#property#>)

WCDB_INDEX(<#_index_subfix#>, <#property#>)
 */

WCDB_IMPLEMENTATION(BBIndexModel);

WCDB_SYNTHESIZE(SN);
WCDB_SYNTHESIZE(KindSN);
WCDB_SYNTHESIZE(ChapterNumber);
WCDB_SYNTHESIZE(NewOrOld);
WCDB_SYNTHESIZE(PinYin);
WCDB_SYNTHESIZE(ShortName);
WCDB_SYNTHESIZE(FullName);

@end
