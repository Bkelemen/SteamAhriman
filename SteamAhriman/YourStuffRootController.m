//
//  YourStuffRootController.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 20/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YourStuffRootController.h"
#import "SetupViewController.h"
#import "GamesListViewController.h"
#import "FriendListViewController.h"

@implementation YourStuffRootController
@synthesize steamIDLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = NSLocalizedString(@"Your Stuff", @"Your Stuff");
        self.tabBarItem.image = [UIImage imageNamed:@"profile"];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];



    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if( ([defaults objectForKey:@"steamID"] == nil) || 
       ([[defaults objectForKey:@"steamID"] isEqualToString:@""] )
       ){
        
        SetupViewController* controller = [[[SetupViewController alloc] initWithNibName:@"SetupViewController" bundle:nil] autorelease];
        [self presentModalViewController:controller animated:YES];
    }
    
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void) viewWillAppear:(BOOL)animated{
    
    self.steamIDLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"steamID"];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)goToSettings:(id)sender{

    SetupViewController* controller = [[[SetupViewController alloc] initWithNibName:@"SetupViewController" bundle:nil] autorelease];
    [self presentModalViewController:controller animated:YES];

}

-(IBAction)goToYourGames:(id)sender{

    GamesListViewController* gamesController = [[GamesListViewController alloc] initWithNibName:@"GamesListViewController" bundle:nil];
    [self.navigationController pushViewController:gamesController animated:YES];
}

-(IBAction)goToYourWishlist:(id)sender{

    GamesListViewController* gamesController = [[GamesListViewController alloc] initWithNibName:@"GamesListViewController" bundle:nil];
    [self.navigationController pushViewController:gamesController animated:YES];
}


@end
