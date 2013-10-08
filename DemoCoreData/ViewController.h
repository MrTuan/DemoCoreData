//
//  ViewController.h
//  DemoCoreData
//
//  Created by Mr Tuan on 2/26/13.
//  Copyright (c) 2013 Mr Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Label.h"
#import "Album.h"
#import "Artist.h"
#import "AppDelegate.h"

@interface ViewController : UIViewController
{
    IBOutlet UITableView *tbvLabel;
    NSMutableArray *listLabel;
}
@property (strong, nonatomic) IBOutlet UITableView *tbvLabel;
@property (strong, nonatomic) NSMutableArray *listLabel;
@end
