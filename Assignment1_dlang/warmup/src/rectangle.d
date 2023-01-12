// Annotations made by Mike Shah
import std.stdio;

// A rectangle struct
struct Rectangle {    

	// Poorly named variables that do not reflect their scope. 
	// m_ or 'm' reflects the variables scope to a class.
    uint width, height; 
	
    void SetWidth(uint _width){
		width = _width;
	}
	
	void SetHeight(uint _height){
		height = _height;
	}
    
    auto area() { 	
    	return width*height;
    }
}

// 'main()' is the entry point to our program
void main () {
  Rectangle rect;
 
  // Call a member function.
  rect.SetWidth(3);
  rect.SetHeight(4);
  
  // Print out the area function.
  writeln("area: ",rect.area());
	
}
