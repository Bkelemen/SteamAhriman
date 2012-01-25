//
//  FriendObject.h
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendObject : NSObject{

    NSString* steamId;
    NSString* nickname;
}

@property(nonatomic, retain) NSString* steamId;
@property(nonatomic, retain) NSString* nickname;

-(FriendObject*) initWithId:(NSString*)_steamId 
                andNickname:(NSString*)_nickname;
@end
