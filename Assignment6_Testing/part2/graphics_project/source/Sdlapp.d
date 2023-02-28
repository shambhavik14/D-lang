import std.stdio;
import std.string;

import bindbc.sdl;
import loader = bindbc.loader.sharedlib;
import surface;

class SDLApp {

	Surface imgSurface;
  this()
 {

	this.imgSurface = new Surface();
    // Load the SDL libraries from bindbc-sdl
	  // on the appropriate operating system
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

    ~this(){
      // Quit the SDL Application
      SDL_Quit();
	    writeln("Ending application--good bye!");
    }

    const SDLSupport ret;

    void MainApplicationLoop() {

    	SDL_Window* window= SDL_CreateWindow("D SDL Painting",
                                        SDL_WINDOWPOS_UNDEFINED,
                                        SDL_WINDOWPOS_UNDEFINED,
                                        640,
                                        480,
                                        SDL_WINDOW_SHOWN);
	SDL_Surface* sur = this.imgSurface.iSurface;
	Pixel pixel = Pixel(255,128,32);
    	bool runApplication = true;
    	bool drawing = false;
    	while(runApplication){
    		SDL_Event e;
    		while(SDL_PollEvent(&e) !=0){
    			if(e.type == SDL_QUIT){
    				runApplication= false;
    			}
    			else if(e.type == SDL_MOUSEBUTTONDOWN){
    				drawing=true;
    			}else if(e.type == SDL_MOUSEBUTTONUP){
    				drawing=false;
    			}else if(e.type == SDL_MOUSEMOTION && drawing){
    				// retrieve the position
    				int xPos = e.button.x;
    				int yPos = e.button.y;

    				int brushSize=4;
    				for(int w=-brushSize; w < brushSize; w++){
    					for(int h=-brushSize; h < brushSize; h++){
    						this.imgSurface.UpdateSurfacePixel(xPos+w,yPos+h,pixel);
    					}
    				}
    			}
    		}

    		SDL_BlitSurface(sur,null,SDL_GetWindowSurface(window),null);
    		// Update the window surface
    		SDL_UpdateWindowSurface(window);
    		SDL_Delay(16);
    	}

        SDL_DestroyWindow(window);

    }


  }


