//
//  Visualizer.h
//  DeskTunes
//
//  Created by Brandon Schurman on 2013-03-26.
//  Copyright (c) 2013 Brandon Schurman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FullScreenView.h"
#import <OpenGL/gl.h>

@interface Visualizer : NSObject

@property FullScreenView *myWindow;

- (void)start;

@end
