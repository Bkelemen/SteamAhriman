//
//  GameObject.m
//  SteamAhriman
//
//  Created by aaaa aaaa on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameObject.h"

@implementation GameObject

@synthesize name;
@synthesize description;
@synthesize gameId;

-(GameObject*) initWithName:(NSString *)_name 
             andDescription:(NSString *)_description
                  andGameId:(NSString *)_gameId{

    GameObject* game = [[GameObject alloc] init];
    game.name = _name;
    game.description = _description;
    game.gameId = _gameId;
    
    return game;
}

@end
