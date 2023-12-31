// Annotations made by Mike Shah
import std.stdio;

// A rectangle struct
struct Rectangle {    

	// Poorly named variables that do not reflect their scope. 
	// m_ or 'm' reflects the variables scope to a class.
    uint mWidth, mHeight; 
	
    void SetWidth(uint m_width){
		mWidth = m_width;
	}
	
	void SetHeight(uint m_height){
		mHeight = m_height;
	}
    
    auto area() { 	
    	return mWidth*mHeight;
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
