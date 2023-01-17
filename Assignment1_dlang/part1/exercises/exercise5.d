// Modify one of the examples from https://tour.dlang.org/
// Place it in this file.
// We will run these with rdmd
//Duplicate elements in an array
import std.stdio;

void main() {
	int[] arr = [1,2,3,4,2,7,8,8,3];
	writeln("Duplicate elements in the given array: ");
	for(int i = 0; i < arr.length; i++) {
		for(int j = i + 1; j <arr.length; j++) {
			if(arr[i] == arr[j] {
				writeln(arr[j]);
			}
		}
	}
}
