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

unittest {
  MyDataStructure!int intDataStructure;
  intDataStructure.append(1);
  int answer = intDataStructure.front();
  assert(answer == 1);
  
}

unittest {
  MyDataStructure!int intDataStructure;
  intDataStructure.append(1);
  bool answer = intDataStructure.empty();
  assert(answer == false);
}

unittest {
  MyDataStructure!int intDataStructure;
  intDataStructure.append(1);
  intDataStructure.append(2);
  intDataStructure.append(3);
  int answer1 = intDataStructure.front()
  assert(answer1 == 1);
  intDataStructure.popFront();
  int answer2 = intDataStructure.front();
  writeln(answer2 == 2);
  
}

