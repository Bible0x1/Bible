//
//  BBLectionModel.h
//  Bible
//
//  Created by ByteDance on 2023/5/13.
//

#import <Foundation/Foundation.h>

@interface BBLectionModel : NSObject

/*
 // An ORM type can be any C types or any ObjC classes which conforms to NSCoding or WCTColumnCoding protocol.
 // An ORM property must contains a setter which can be private
@property (nonatomic, retain) NSString *<#property1#>;
@property (nonatomic, assign) NSInteger <#property2#>;
@property (nonatomic, assign) float <#property3#>;
@property (nonatomic, strong) NSArray *<#property4#>;
@property (nonatomic, readonly) NSDate *<#..........#>;
 */

@property (nonatomic, assign) NSInteger ID; // ID
@property (nonatomic, assign) NSInteger VolumnSN; // VolumnSN
@property (nonatomic, assign) NSInteger ChapterSN; // ChapterSN
@property (nonatomic, assign) NSInteger VerseSN; // VerseSN
@property (nonatomic, copy) NSString *Lection; // Lection
@property (nonatomic, assign) float SoundBegin; // SoundBegin
@property (nonatomic, assign) float SoundEnd; // SoundEnd

@end
