DeskTunes
=========

DeskTunes is a music/audio visualizer that displays directly on the desktop wallpaper. 

The visualizer will look something like this: <http://www.youtube.com/watch?v=kqjKOL0N8ks> with a similar frequency measure displayed directly on the desktop, along the left and right sides of the screen.

The goal is to capture any outgoing audio so that the visualizer will react to music from a media player application like iTunes or even from music played through a web browerser. As this app is in it's early stages, it may suffice to have a built in music player and library to work with (for the time being), rather than capture system audio. The audio should be processed using a Fast Fourier Transform, then drawn with OpenGL.

The app is currently being developed for Mac OS, but a Windows version is also being planned for.
