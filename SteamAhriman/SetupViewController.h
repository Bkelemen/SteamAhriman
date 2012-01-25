//
//  SetupViewController.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 20/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetupViewController : UIViewController{
    UITextField* textField;
}
@property(nonatomic,retain) IBOutlet UITextField* textField;

//-(NSString*)buttonClicked:(id)sender;

-(IBAction)buttonClicked:(id)sender;
-(IBAction)dismissKeyboard:(id)sender;
-(void) showAlertWithMessage:(NSString*) message andTitle:(NSString*)title;
@end
