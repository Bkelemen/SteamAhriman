//
//  SetupViewController.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 20/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SetupViewController.h"

@implementation SetupViewController

@synthesize textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    
    textField.text = [defaults objectForKey:@"steamID"];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)buttonClicked:(id)sender { 
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:textField.text forKey:@"steamID"];
        
    [defaults synchronize];
        
    if([textField.text isEqualToString:@""]) {
        [self showAlertWithMessage:@"ID Nul App will not work as intended u MoFo" andTitle:@"I AM ERROR"];
    }
    
	[self dismissModalViewControllerAnimated:YES];
    
}

-(IBAction)dismissKeyboard:(id)sender{
    [textField resignFirstResponder];
}
-(void) showAlertWithMessage:(NSString*) message andTitle:(NSString*)title{
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
    [alert release];}

@end
