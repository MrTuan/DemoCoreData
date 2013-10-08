//
//  Label.h
//  DemoCoreData
//
//  Created by Mr Tuan on 2/26/13.
//  Copyright (c) 2013 Mr Tuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Artist;

@interface Label : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * genre;
@property (nonatomic, retain) NSSet *artists;
@end

@interface Label (CoreDataGeneratedAccessors)

- (void)addArtistsObject:(Artist *)value;
- (void)removeArtistsObject:(Artist *)value;
- (void)addArtists:(NSSet *)values;
- (void)removeArtists:(NSSet *)values;

@end
