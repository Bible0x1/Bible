//
//  BBIndexModel.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface BBIndexModel : NSObject

/*
 // An ORM type can be any C types or any ObjC classes which conforms to NSCoding or WCTColumnCoding protocol.
 // An ORM property must contains a setter which can be private
@property (nonatomic, retain) NSString *<#property1#>;
@property (nonatomic, assign) NSInteger <#property2#>;
@property (nonatomic, assign) float <#property3#>;
@property (nonatomic, strong) NSArray *<#property4#>;
@property (nonatomic, readonly) NSDate *<#..........#>;
 */
//============================== 圣经数据库 ===============================
@property (nonatomic, assign) NSInteger SN; // SN
@property (nonatomic, assign) NSInteger KindSN; // KindSN
@property (nonatomic, assign) NSInteger ChapterNumber; // ChapterNumber
@property (nonatomic, assign) BOOL NewOrOld; // NewOrOld
@property (nonatomic, copy) NSString *PinYin; // PinYin
@property (nonatomic, copy) NSString *ShortName; // ShortName
@property (nonatomic, copy) NSString *FullName; // FullName
//============================== 运行时字段 ===============================
/// @TODO:, 用户选择的字段，记忆，看一下放在哪里

@end
NS_ASSUME_NONNULL_END
