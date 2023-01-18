// Run your program with: 
// dmd Deque.d -unittest -of=test && ./test
//
// This will execute each of the unit tests telling you if they passed.

import std.stdio;

/*
    The following is an interface for a Deque data structure.
    Generally speaking we call these containers.
    
    Observe how this interface is a templated (i.e. Container(T)),
    where 'T' is a placeholder for a data type.
*/
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
}

// An example unit test that you may consider.
// Try writing more unit tests in separate blocks
// and use different data types.
unittest{
    auto myDeque = new Deque!(int);
    myDeque.push_front(1);
    auto element = myDeque.pop_front();
    assert(element == 1);
}

void main(){
    // No need for a 'main', use the unit test feature.
    // Note: The D Compiler can generate a 'main' for us automatically
    //       if we are just unit testing, and we'll look at that feature
    //       later on in the course.	
}
