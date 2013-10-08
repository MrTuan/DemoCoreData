//
//  Artist.h
//  DemoCoreData
//
//  Created by Mr Tuan on 2/26/13.
//  Copyright (c) 2013 Mr Tuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Artist : NSManagedObject

@property (nonatomic, retain) NSString * hometown;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSManagedObject *label;
@property (nonatomic, retain) NSSet *album;
@end

@interface Artist (CoreDataGeneratedAccessors)

- (void)addAlbumObject:(NSManagedObject *)value;
- (void)removeAlbumObject:(NSManagedObject *)value;
- (void)addAlbum:(NSSet *)values;
- (void)removeAlbum:(NSSet *)values;

@end
