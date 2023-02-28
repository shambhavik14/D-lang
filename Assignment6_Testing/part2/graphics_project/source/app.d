/// Run with: 'dub'

// Import D standard libraries
import std.stdio;
import std.string;

// Load the SDL2 library
import bindbc.sdl;
import loader = bindbc.loader.sharedlib;
import Sdlapp;
import surface;

void main()
{	
	SDLApp myApp = new SDLApp();
	myApp.MainApplicationLoop();
    
}
