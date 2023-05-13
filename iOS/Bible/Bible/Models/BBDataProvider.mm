//
//  BBDataProvider.m
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

/**
 处理数据的提供
 */

#import "BBDataProvider.h"

#import "BBLectionModel+WCTTableCoding.h"

#import <WCDBObjc/WCDBObjc.h>

@interface BBDataProvider ()

@property (nonatomic, strong) WCTDatabase* database;
@property (nonatomic, copy) NSString *documentsDirectory;
@property (nonatomic, copy) NSString *databaseFilename;
@end

@implementation BBDataProvider

+ (instancetype)sharedInstance {
    static BBDataProvider *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[BBDataProvider alloc] init];
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupDatabase];
    }
    return self;
}

- (NSArray<BBIndexModel *> *)obtainIndexModels
{
    NSArray<BBIndexModel *> *indexs = [self.database getObjectsOfClass:BBIndexModel.class fromTable:@"BibleID"];
    return indexs;
}

- (NSArray<BBLectionModel *> *)obtainLectionsWithIndexModel:(BBIndexModel *)indexModel
{
    NSUInteger chapterNumber = indexModel.ChapterNumber;
    
    NSArray<BBLectionModel *> *lections = [self.database getObjectsOfClass:BBLectionModel.class fromTable:@"Bible" where:BBLectionModel.ChapterSN == chapterNumber];
    
    return lections;
}

- (void)setupDatabase
{
    [self copyDatabaseIntoDocumentsDirectory];
    // Set the database file path.
    NSString *databasePath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseFilename];
    WCTDatabase* database = [[WCTDatabase alloc] initWithPath:databasePath];
    self.database = database;
}

-(void)copyDatabaseIntoDocumentsDirectory{
    // Check if the database file exists in the documents directory.
    NSString *destinationPath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseFilename];
    if (![[NSFileManager defaultManager] fileExistsAtPath:destinationPath]) {
        // The database file does not exist in the documents directory, so copy it from the main bundle now.
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:self.databaseFilename];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];

        // Check if any error occurred during copying and display it.
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}

- (NSString *)documentsDirectory
{
    if (!_documentsDirectory) {
        // Set the documents directory path to the documentsDirectory property.
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        _documentsDirectory = [paths objectAtIndex:0];
    }
    return _documentsDirectory;
}

- (NSString *)databaseFilename
{
    if (!_databaseFilename) {
        _databaseFilename = @"bible_cn_union.db";
    }
    return _databaseFilename;
}

@end
