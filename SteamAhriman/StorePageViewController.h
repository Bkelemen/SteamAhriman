//
//  StorePageViewController.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 22/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StorePageViewController : UITableViewController{
    
    NSMutableArray* gameList;
    NSString*       category;
}

@property(nonatomic, retain) NSMutableArray* gameList;
@property(nonatomic, retain) NSString*       category;

- (id)initWithStyle:(UITableViewStyle)style andCategory:(NSString*)_category;
-(void) populateGameList;
@end
