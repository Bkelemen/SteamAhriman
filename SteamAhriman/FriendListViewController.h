//
//  FriendListViewController.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendListViewController : UITableViewController{

    NSMutableArray* friendListArray;
}

@property(nonatomic, retain) NSMutableArray* friendListArray;

@end
