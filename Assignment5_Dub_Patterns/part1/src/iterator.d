import std.stdio;

struct MyDataStructure(T){
    // Internal container of our data
    T[] mCollection;

    // Append by making a copy of data
    // and appending it to our collection
    void append(T data){
        mCollection ~= data;
    }


}

void main(){
    MyDataStructure!int intDataStructure;

    intDataStructure.append(1);
    intDataStructure.append(2);
    intDataStructure.append(3);
    intDataStructure.append(4);
    intDataStructure.append(5);
    intDataStructure.append(6);

    // User our iterator
    foreach(element ;intDataStructure){
        writeln(element);
    }
    // Use our iterator again
    foreach(element ;intDataStructure){
        writeln(element);
    }

    // Let's observe that we are not modifying the underlying
    // data structure in any way
    writeln(intDataStructure.mCollection);
}



