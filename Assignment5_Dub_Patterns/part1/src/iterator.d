import std.stdio;

struct MyDataStructure(T) {
  
  T[] mCollection;
  
  void append(T data) {
    mCollection ~= data;
    
  }
  
  int current = 0;
  int next = 0;
  
  
  T front() {
    return mCollection[current];
  }
  
  void popFront() {
    debug writeln("popFront next++");
    next++;
    current = next;
  }
  
  bool empty() {
    if(next >= mCollection.length) {
      debug writeln("empty");
      return true;
    }
    
    return false;
  }
}

void main() {
  MyDataStructure!int intDataStructure;
  
  intDataStructure.append(1);
  intDataStructure.append(2);
  intDataStructure.append(3);
  intDataStructure.append(4);
  intDataStructure.append(5);
  intDataStructure.append(6);
  
  foreach(element ; intDataStructure) {
    writeln(element);
  }
  
  foreach(element ; intDataStructure) {
    writeln(element);
  }
  
  writeln(intDataStructure.mCollection);
}

