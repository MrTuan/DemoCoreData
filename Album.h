//
//  Album.h
//  DemoCoreData
//
//  Created by Mr Tuan on 2/26/13.
//  Copyright (c) 2013 Mr Tuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Artist;

@interface Album : NSManagedObject

@property (nonatomic, retain) NSString * released;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) Artist *artist;

@end
