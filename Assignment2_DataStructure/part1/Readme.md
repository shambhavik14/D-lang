# Data Structure from an Interface

> "A unit tested templated data structure implemented to an interface -- made simple!"

# Resources to help

Provided below are a list of curated resources to help you complete the task(s) below. Consult them (read them, or do ctrl+f for keywords) if you get stuck.

1. https://tour.dlang.org/
	- The D Language Tour
2. https://dlang.org/phobos/index.html
	- The Phobos Runtime Library (i.e. standard library of code)
3. https://www.youtube.com/playlist?list=PLvv0ScY6vfd9Fso-3cB4CGnSlW0E4btJV
	- My video series on the D Programming Language -- over time growing!

## Description

Your task for this assignment is to **write a data structure given an interface** in the D programming language.  I will provide the interface, and it will be up to you to implement the data structures functionality.

# Task 1

Observe the interface provided in [./src/Deque.d](./src/Deque.d). Your job will be to build an implementation of a Deque data structure in the D programming langauge that matches the provided interface.

Provided is a description of the Deque if you are unfamiliar: https://en.wikipedia.org/wiki/Double-ended_queue

Provided below is an interface you will inherit from for your Deque.

```d
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
```

The interface is abstract and it is templated such that it should be able to work with any data type. You can take a peak at the templates tutorial (https://tour.dlang.org/tour/en/basics/templates) if you need to refresh on the syntax. D uses the ()'s for the template parameters, and for the actual instantiation of a template, you use a !. That said, the interface 'Container' cannot be instantiated, so a concrete type (that implements this interface -- the Deque) is what we are going to be creating.

## Testing

The D programming language provides excellent facilities for unit testing that are built into the language. We are going to cover this feature again in a later lecture, but for now you can find some additional explanation here and provide in your [./src/Deque.d](./src/Deque.d) with an example you can replicate.

Documentation: https://dlang.org/spec/unittest.html

### Unit Testing

You can invoke unit tests as follows:

`dmd Deque.d -unittest -of=test && ./test`

Note that for this run, we are using the `-unittest` flag. This will build a D program that will run all of the unit tests.

Typically, a unit test is a small test to make sure functionality is working. In D, we'll often use the 'assert' statement to test if the functionality is working within each -unittest block. You can find more information here: https://tour.dlang.org/tour/en/gems/contract-programming

**Your Task** will be to have a total of at least 10 unit tests exerciseing the functionality of your Deque data structure. You  might consider exerciseing all of the operations (we'll talk about code coverage later), as well as trying on different data types (it is templated after all!).

# Submission/Deliverables

### Submission

- Commit all of your files to github, including any additional files you create.
- Do not commit any binary files unless told to do so.
- Do not commit any 'data' files generated when executing a binary.

### Deliverables

- Commit your [./src/Deque.d](./src/Deque.d) file.
    - Make sure to include 10 unit tests in this file.
    - There need not be any implementation in 'main' we are just running the -unittest flag

# Going Further

An optional task(if any) that will reinforce your learning throughout the semester--this is not graded.

1. Try building another data structure and practicing in D.

# F.A.Q. (Instructor Anticipated Questions)

1. Q: Can I use a 'deque' I found somewhere as the underlying type?
	- A: No, use a dynamic array or a list type of data type. You can choose as long as you don't implement the deque with another deque.

