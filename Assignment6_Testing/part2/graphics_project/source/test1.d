import std;
import surface;
import Sdlapp;

import bindbc.sdl;
import loader = bindbc.loader.sharedlib;

const SDLSupport ret;

shared static this() {

	version(Windows){
      		writeln("Searching for SDL on Windows");
		 ret = loadSDL("SDL2.dll");
	  }
    	version(OSX){
      		writeln("Searching for SDL on Mac");
      		ret = loadSDL();
    	}
    	version(linux){
      		writeln("Searching for SDL on Linux");
	  	ret = loadSDL();
	 }
	  // Error if SDL cannot be loaded
    	if(ret != sdlSupport){
      		writeln("error loading SDL library");

     		 foreach( info; loader.errors){
        		writeln(info.error,':', info.message);
      		}
    	}
    	if(ret == SDLSupport.noLibrary){
      		writeln("error no library found");
    	}
    	if(ret == SDLSupport.badLibrary){
        	writeln("Eror badLibrary, missing symbols, perhaps an older or very new version of SDL is causing the problem?");
    	}

    	// Initialize SDL
    	if(SDL_Init(SDL_INIT_EVERYTHING) !=0){
        	writeln("SDL_Init: ", fromStringz(SDL_GetError()));
    	}

}


// testing blue color of a pixel
@("unittest for UpdateSurfacePixel method")
unittest{
	
	SDLApp app = new SDLApp();
	app.imgSurface.UpdateSurfacePixel(50,60, Pixel(25, 125,225));
	assert(app.imgSurface.pixelAt(50,60).b == 25);
}

// testing green color of a pixel
@("unittest for UpdateSurfacePixel method")
unittest{

        SDLApp app = new SDLApp();
        app.imgSurface.UpdateSurfacePixel(50,60, Pixel(25, 125,225));
        assert(app.imgSurface.pixelAt(50,60).g == 125);
}

// testing red color of a pixel
@("unittest for UpdateSurfacePixel method")
unittest{

        SDLApp app = new SDLApp();
        app.imgSurface.UpdateSurfacePixel(10,20, Pixel(25, 125,225));
        assert(app.imgSurface.pixelAt(10,20).r == 225);
}


