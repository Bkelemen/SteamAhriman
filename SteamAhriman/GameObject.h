//
//  GameObject.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameObject : NSObject{

    NSString* name;
    NSString* description;
    NSString* gameId;
}

@property(nonatomic, retain) NSString* name;
@property(nonatomic, retain) NSString* description;
@property(nonatomic, retain) NSString* gameId;

-(GameObject*) initWithName:(NSString*) _name 
            andDescription:(NSString*) _description
                 andGameId:(NSString*) _gameId;

@end
