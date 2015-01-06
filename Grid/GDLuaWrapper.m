//
//  GDLuaWrapper.m
//  Grid
//
//  Created by 张远坤 on 1/6/15.
//  Copyright (c) 2015 fm.cocoa. All rights reserved.
//

#import "GDLuaWrapper.h"

@implementation GDLuaWrapper

@synthesize L;

+(instancetype) getInstance {
    static GDLuaWrapper *sharedInc = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInc = [[self alloc] init];
    });
    return sharedInc;
}

-(void) initLua {
    if (L)
        lua_close(L);
    
    L = luaL_newstate();
    luaL_openlibs(L);
    
    luaL_loadfile(L, [[[NSBundle mainBundle] pathForResource:@"init" ofType:@"lua"] fileSystemRepresentation]);
    
    lua_pcall(L, 4, 1, 0);
}

@end
