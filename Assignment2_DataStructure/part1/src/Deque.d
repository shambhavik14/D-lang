// Run your program with: 
// dmd Deque.d -unittest -of=test && ./test
//
// This will execute each of the unit tests telling you if they passed.

import std.stdio;
import std.algorithm : moveAll;

interface Container(T){
	// Element is on the front of collection
	void push_front(T x);
	// Element is on the back of the collection
	void push_back(T x);
	// Element is removed from front and returned
	// assert size > 0 before operation
	T pop_front();
	// Element is removed from back and returned
	// assert size > 0 before operation
	T pop_back();
	// Retrieve reference to element at position at index
	// assert pos is between [0 .. $] and size > 0
	ref T at(size_t pos);
	// Retrieve reference to element at back of position
	// assert size > 0 before operation
	ref T back();
	// Retrieve element at front of position
	// assert size > 0 before operation
	ref T front();
        // Retrieve number of elements currently in container
        size_t size();
}
/*
    A Deque is a double-ended queue in which we can push and
    pop elements.
    
    Note: Remember we could implement Deque as either a class or
          a struct depending on how we want to extend or use it.
          Either is fine for this assignment.
*/

class Deque(T) : Container!(T){
	// Implement here
	T[] arr;
	          
	override void push_front(T x) {

		arr = [x] ~ arr;
	}
		      
	override void push_back(T x) {
		arr ~= x;
	}
		          
	override T pop_front() {
			        
	        auto sizet = size();
		assert(sizet > cast(size_t) 0, "Deque is empty");
		T x = arr[0];
		moveAll(arr[1..$], arr[0..$-1]);
		--sizet;
		return x;
						            
	}
			      
	override T pop_back() {
	
		auto sizet = size();
		assert(sizet > cast(size_t) 0, "Deque is empty");
		T x = arr[$-1];
		--sizet;
		return x;
	}
			          
	override ref T at(size_t pos) {
					        
		auto sizet = size();
		assert(sizet > cast(size_t) 0, "Deque is empty");
		assert(pos <= sizet && pos >= cast(size_t) 0, "This index does not exist");
		return arr[pos];
	}
				      
	override ref T front() {
					            
		auto sizet = size();
		assert(sizet > cast(size_t) 0, "Deque is empty");
		return arr[0];							      
	}
	
	override ref T back() {
						        
		auto sizet = size(); 
		assert(sizet > cast(size_t) 0, "Deque is empty");
		return arr[$-1];
	}
					      
	override size_t size() {
		return arr.length;
	}
}

// An example unit test that you may consider.
// Try writing more unit tests in separate blocks
// and use different data types.
unittest
{
	auto myDeque = new Deque!(int);
	myDeque.push_front(1);
	auto element = myDeque.pop_front();
    	assert(element == 1);
}

unittest
{
	auto myDeque = new Deque!(int);
	myDeque.push_back(10);
	auto element = myDeque.pop_back();
	assert(element == 10);
}

unittest
{
	auto myDeque = new Deque!(int);
    	myDeque.push_front(1);
	auto element = myDeque.front();
	assert(element == 1);
}

unittest
{
	auto myDeque = new Deque!(int);
    	myDeque.push_back(10);
	auto element = myDeque.back();
	assert(element == 10);
}

unittest
{
	auto myDeque = new Deque!(int);
    	myDeque.push_back(10);
	myDeque.push_front(1);
    	auto start = myDeque.front();
	auto element = myDeque.back();
	assert(start == 1);
	assert(element == 10);
}

unittest
{
	auto myDeque = new Deque!(string);
	myDeque.push_back("hey");
	auto element = myDeque.pop_back();
	assert(element == "hey");
}

unittest
{
	auto myDeque = new Deque!(string);
    	myDeque.push_front("hey");
	auto element = myDeque.at(0);
	assert(element == "hey");
}

unittest
{
	auto myDeque = new Deque!(int);
	myDeque.push_back(10);
	auto element = myDeque.at(0);
	assert(element == 10);
}

unittest
{
	auto myDeque = new Deque!(int);
	myDeque.push_back(9);
	myDeque.push_front(3);
	myDeque.push_front(1);
	auto element = myDeque.at(1);
	assert(element == 3);
}

unittest 
{
	auto myDeque = new Deque!(int);
	myDeque.push_front(3);
    	auto element = myDeque.size();
    	assert(element == cast(size_t) 1);
		  
}

void main() {

}
