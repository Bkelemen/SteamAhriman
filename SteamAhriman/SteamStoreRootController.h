//
//  SteamStoreRootController.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SteamStoreRootController : UIViewController <UIScrollViewDelegate> {
    
    UIScrollView*   scrollView;
    UIPageControl*  pageControl;
    NSMutableArray* viewControllers;
    
    BOOL            pageControlUsed;
    NSMutableArray*        titleForController;

    
}

@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;
@property (nonatomic, retain) NSMutableArray* viewControllers;
@property (nonatomic, assign) BOOL pageControlUsed;
@property (nonatomic, retain) NSMutableArray*  titleForController;


- (IBAction)changePage:(id)sender;
- (void) loadScrollViewWithPage:(int)page;


@end
