import std.stdio;
import std.string;

import bindbc.sdl;
import loader = bindbc.loader.sharedlib;

struct Pixel {
    
    ubyte b;
    ubyte g;
    ubyte r;
  
}


class Surface {
  
  SDL_Surface* iSurface;
  
  this() {
    this.iSurface = SDL_CreateRGBSurface(0,640,480,32,0,0,0,0);
  }
  
  ~this() {
    SDL_FreeSurface(this.iSurface);
  }
  
  /// Function for updating the pixels in a surface to a 'blue-ish' color.
  void UpdateSurfacePixel(int xPos, int yPos, Pixel p){
  	// When we modify pixels, we need to lock the surface first
  	SDL_LockSurface(this.iSurface);
  	// Make sure to unlock the surface when we are done.
  	scope(exit) SDL_UnlockSurface(this.iSurface);
  
  	// Retrieve the pixel arraay that we want to modify
  	ubyte* pixelArray = cast(ubyte*)this.iSurface.pixels;
  	// Change the 'blue' component of the pixels
  	pixelArray[yPos*iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+0] = p.b;
  	// Change the 'green' component of the pixels
  	pixelArray[yPos*this.iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+1] = p.g;
  	// Change the 'red' component of the pixels
  	pixelArray[yPos*this.iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+2] = p.r;
	}
  
  Pixel pixelAt(int xPos, int yPos) {
        Pixel p = Pixel();

        // Retrieve the pixel array that we want to read
        ubyte* pixelArray = cast(ubyte*)this.iSurface.pixels;
        // Read the 'blue' component of the pixel at the specified position
        p.b = pixelArray[yPos*iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+0];
        // Read the 'green' component of the pixel at the specified position
        p.g = pixelArray[yPos*iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+1];
        // Read the 'red' component of the pixel at the specified position
        p.r = pixelArray[yPos*iSurface.pitch + xPos*this.iSurface.format.BytesPerPixel+2];
        
        return p;
    }
  
}

