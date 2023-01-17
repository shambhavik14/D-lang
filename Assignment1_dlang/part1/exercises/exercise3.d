// Modify one of the examples from https://tour.dlang.org/
// Place it in this file.
// We will run these with rdmd
// Fibonnacci series

import std.stdio;

void main() {
	int n = 0;
	int t1 = 0;
	int t2 = 1;

	write("Enter a number ");
	readf(" %s", n);

	while(t1 <= n) {
		write(t1, ", ");
		int sum = t1 + t2;
		t1 = t2;
		t2 = sum;
	}
}
