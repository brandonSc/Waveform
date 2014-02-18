//
//  OpenGLView.m
//  DeskTunes
//
//  Created by Brandon Schurman on 2013-03-26.
//  Copyright (c) 2013 Brandon Schurman. All rights reserved.
//

#import "OpenGLView.h"
#import <OpenGL/gl.h>

@implementation OpenGLView

static void drawAnObject ()
{
    // trying to draw a triangle here
    glColor3f(1.0f, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3 ,0.0);
    }
    glEnd();
}

-(void) drawRect: (NSRect) bounds
{
    // still trying to get this to work...
    glClear(GL_COLOR_BUFFER_BIT);
    [[NSColor clearColor] setFill];
    NSRectFill(bounds);
    drawAnObject();
    glFlush();
}

@end
