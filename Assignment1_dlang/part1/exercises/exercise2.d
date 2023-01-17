// Modify one of the examples from https://tour.dlang.org/
// Place it in this file.
// We will run these with rdmd
import std.stdio;

int factorial(int n) {
	int output = 0;
	if(n == 1){
		return 1;
	}
	output = factorial(n-1)*n;
	return output;
}

void main(){

	int a = 0;
	writeln("Enter a number");
	readf(" %s", a);
	int result = factorial(a);
	writeln("factorial is ", result);
}
