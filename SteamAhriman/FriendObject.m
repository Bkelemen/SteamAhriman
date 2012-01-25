//
//  FriendObject.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FriendObject.h"

@implementation FriendObject

@synthesize steamId;
@synthesize nickname;

-(FriendObject*) initWithId:(NSString*)_steamId 
                andNickname:(NSString*)_nickname{

    FriendObject* friend = [[FriendObject alloc] init];
    friend.steamId = _steamId;
    friend.nickname = _nickname;
    
    return friend;
}
@end
