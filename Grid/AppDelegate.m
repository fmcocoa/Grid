//
//  AppDelegate.m
//  Grid
//
//  Created by 张远坤 on 1/5/15.
//  Copyright (c) 2015 fm.cocoa. All rights reserved.
//

#import "AppDelegate.h"
#import "GDLuaWrapper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [[GDLuaWrapper getInstance] initLua];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
