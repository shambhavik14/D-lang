// Modify one of the examples from https://tour.dlang.org/
// Place it in this file.
// We will run these with rdmd
// Check if number is prime

import std.stdio;

void main() {
	int i = 0, m = 0, flag = 0;
	int n = 0;
	writeln("Enter a number ");
	readf(" %s", n);
	m = n/2;
	if(n==0||n==1){
		writeln(n," is not a prime number");
	}
	else {
		for(i = 2; i <= m; i++) {
			if(n%i==0) {
				writeln(n," is not a prime number");
				flag = 1;
				break;
			}
		}
		if(flag==0) {
			writeln(n," is a prime number");
		}
	}
}	
