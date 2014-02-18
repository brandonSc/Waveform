//
//  FullScreenView.m
//  DeskTunes
//
//  Created by Brandon Schurman on 2013-03-26.
//  Copyright (c) 2013 Brandon Schurman. All rights reserved.
//

#import "FullScreenView.h"

@implementation FullScreenView

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)windowStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)deferCreation
{
    self = [super initWithContentRect:contentRect styleMask:windowStyle backing:bufferingType defer:deferCreation];
    if( self ){
        [self setLevel:kCGDesktopWindowLevel - 1];
        [self setCollectionBehavior:
         (NSWindowCollectionBehaviorCanJoinAllSpaces |
          NSWindowCollectionBehaviorStationary |
          NSWindowCollectionBehaviorIgnoresCycle)];
    }
    return self;
}

- (BOOL)canBecomeMainWindow
{
    return false;
}

- (BOOL)canBecomeKeyWindow
{
    return false;
}

@end
