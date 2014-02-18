//
//  Visualizer.m
//  DeskTunes
//
//  Created by Brandon Schurman on 2013-03-26.
//  Copyright (c) 2013 Brandon Schurman. All rights reserved.
//

#import "Visualizer.h"
#import "OpenGLView.h"

@implementation Visualizer
@synthesize myWindow;

- (void)start
{
    NSRect mainDisplayRect = [[NSScreen mainScreen] frame];
    myWindow = [[FullScreenView alloc] initWithContentRect: mainDisplayRect styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:YES];
    
    NSOpenGLPixelFormatAttribute attrs[] = {
        NSOpenGLPFADoubleBuffer,
        0
    };
    
    // setup full screen, unclickable, background window
    NSOpenGLPixelFormat* pixelFormat = [[NSOpenGLPixelFormat alloc] initWithAttributes:attrs];
    NSRect viewRect = NSMakeRect(0.0, 0.0, mainDisplayRect.size.width, mainDisplayRect.size.height);
    // with an openGL view for drawing
    OpenGLView *fullScreenView = [[OpenGLView alloc] initWithFrame:viewRect pixelFormat: pixelFormat];
    [myWindow setContentView: fullScreenView];
    [myWindow setOpaque:NO];
    [myWindow makeKeyAndOrderFront:self];
    
    // for now just adding a button to the view as an example
    NSButton *myButton = [[NSButton alloc] initWithFrame:NSMakeRect(10, 500, 100, 50)];
    [fullScreenView addSubview:myButton];
    
}

@end
