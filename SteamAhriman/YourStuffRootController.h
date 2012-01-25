//
//  YourStuffRootController.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 20/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YourStuffRootController : UIViewController {

    UILabel* steamIDLabel;
}

@property(nonatomic,retain) IBOutlet UILabel* steamIDLabel;

-(IBAction)goToSettings:(id)sender;
-(IBAction)goToYourGames:(id)sender;
-(IBAction)goToYourWishlist:(id)sender;


@end
