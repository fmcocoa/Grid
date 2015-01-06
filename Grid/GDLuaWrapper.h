//
//  GDLuaWrapper.h
//  Grid
//
//  Created by 张远坤 on 1/6/15.
//  Copyright (c) 2015 fm.cocoa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lua/lualib.h"
#import "lua/lauxlib.h"

@interface GDLuaWrapper : NSObject

+(instancetype) getInstance;

-(void) initLua;

@property (nonatomic) lua_State *L;

@end