//
//  StorePageViewController.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 22/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StorePageViewController.h"
#import "GameDetailViewController.h"


@implementation StorePageViewController

@synthesize gameList, category;

- (id)initWithStyle:(UITableViewStyle)style andCategory:(NSString*)_category
{
    self = [super initWithStyle:style];
    if (self) {
        self.tableView.delegate=self;
        self.category = _category;
        [self populateGameList];
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Populate Data source

-(void) populateGameList{

    if(self.gameList == nil){
    
        gameList = [[NSMutableArray alloc] init ];
        
    }
    
    [gameList addObject:@"1"]; 

    [gameList addObject:@"2"]; 

    [gameList addObject:@"3"]; 

    [gameList addObject:@"4"]; 

    [gameList addObject:@"5"]; 

    [gameList addObject:@"6"]; 

    [gameList addObject:@"7"]; 

    [gameList addObject:@"8"];
    
    [gameList addObject:@"9"]; 

    [gameList addObject:@"10"]; 

    [gameList addObject:@"11"]; 

    [gameList addObject:@"12"]; 

    [gameList addObject:@"13"]; 
    
    [gameList addObject:@"14"]; 

    [gameList addObject:@"15"]; 

    [gameList addObject:@"16"]; 

    [gameList addObject:@"17"]; 

    [gameList addObject:@"18"]; 

    [gameList addObject:@"19"]; 

    [gameList addObject:@"20"]; 


}




#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"%@", category];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [gameList objectAtIndex:indexPath.row]];
    
    return cell;
}





#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    // Navigation logic may go here. Create and push another view controller.
    
     GameDetailViewController *gameView = [[GameDetailViewController alloc] initWithNibName:@"GameDetailViewController" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:gameView animated:YES];
     [gameView release];
     
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    //return UITableViewCellAccessoryDetailDisclosureButton;
    return UITableViewCellAccessoryDisclosureIndicator;
}

@end
